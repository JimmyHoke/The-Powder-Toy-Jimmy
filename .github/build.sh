#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [ -z "${PLATFORM_SHORT-}" ]; then
	>&2 echo "PLATFORM_SHORT not set (lin, win)"
	exit 1
fi
if [ -z "${TOOLSET_SHORT-}" ]; then
	>&2 echo "TOOLSET_SHORT not set (gcc, msvc)"
	exit 1
fi
if [ -z "${RELNAME-}" ]; then
	>&2 echo "RELNAME not set"
	exit 1
fi
if [ -z "${RELTYPE-}" ]; then
	>&2 echo "RELTYPE not set"
	exit 1
fi
if [ -z "${MOD_ID-}" ]; then
	>&2 echo "MOD_ID not set"
	exit 1
fi

if [ -z "${build_sh_init-}" ]; then
	if [ $TOOLSET_SHORT == "msvc" ]; then
		for i in C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/**/**/VC/Auxiliary/Build/vcvarsall.bat; do
			vcvarsall_path=$i
		done
		x64_x86=x64
		cat << BUILD_INIT_BAT > .github/build_init.bat
@echo off
call "${vcvarsall_path}" ${x64_x86}
bash -c 'build_sh_init=1 ./.github/build.sh'
BUILD_INIT_BAT
		./.github/build_init.bat
	else
		build_sh_init=1 ./.github/build.sh
	fi
	exit 0
fi

if [ -d build ]; then
	rm -r build
fi

other_flags=$'\t-Dmod_id='
other_flags+=$MOD_ID
bin_suffix=
bin_prefix=
static_flag=-Dstatic=prebuilt
if [ $PLATFORM_SHORT == "win" ]; then
	other_flags+=$'\t-Db_vscrt=static_from_buildtype'
fi
if [ $PLATFORM_SHORT == "lin" ]; then
	# We use gcc on lin; sadly, gcc + lto + libstdc++ + pthread = undefined reference to
	# pthread_create, thanks to weak symbols in libstdc++.so (or something). See
	# https://gcc.gnu.org/legacy-ml/gcc-help/2017-03/msg00081.html
	other_flags+=$'\t-Db_asneeded=false\t-Dcpp_link_args=-Wl,--no-as-needed'
	if [ $TOOLSET_SHORT == "gcc" ]; then
		other_flags+=$'\t-Dbuild_render=true\t-Dbuild_font=true'
	fi
fi
stable_or_beta="n"
if [ "$RELTYPE" == "beta" ]; then
	other_flags+=$'\t-Dbeta=true'
	stable_or_beta="y"
fi
if [ "$RELTYPE" == "stable" ]; then
	stable_or_beta="y"
fi
if [ "$RELTYPE" == "snapshot" ]; then
	other_flags+=$'\t-Dsnapshot=true\t-Dsnapshot_id='
	other_flags+=`echo $RELNAME | cut -d '-' -f 2` # $RELNAME is snapshot-X
fi
if [ "$RELTYPE" == "snapshot" ] && [ "$MOD_ID" != "0" ]; then
	>&2 echo "mods and snapshots do not mix"
	exit 1
fi
if [ "$stable_or_beta" == "y" ] && [ "$MOD_ID" != "0" ]; then
	# mods and snapshots both check their snapshot_id against whatever version starcatcher.us/TPT has
	other_flags+=$'\t-Dsnapshot_id='
	other_flags+=`echo $RELNAME | cut -d '.' -f 3` # $RELNAME is vX.Y.Z
fi
if [ "$RELTYPE" == "snapshot" ] || [ "$MOD_ID" != "0" ]; then
	other_flags+=$'\t-Dupdate_server=starcatcher.us/TPT'
fi
if [ "$RELTYPE" != "dev" ]; then
	other_flags+=$'\t-Dignore_updates=false'
fi
lto_flag=-Db_lto=true
powder_bin=${bin_prefix}powder$bin_suffix
if [ "$RELTYPE" == "tptlibsdev" ]; then
	if [ -z "${GITHUB_REPOSITORY_OWNER-}" ]; then
		>&2 echo "GITHUB_REPOSITORY_OWNER not set (whose tpt-libs to clone?)"
		exit 1
	fi
	tptlibsbranch=`echo $RELNAME | cut -d '-' -f 2-` # $RELNAME is tptlibsdev-BRANCH
	if [ ! -d tpt-libs ]; then
		git clone https://github.com/$GITHUB_REPOSITORY_OWNER/tpt-libs --branch $tptlibsbranch
	fi
	cd tpt-libs
	quad="x86_64"-$PLATFORM_SHORT-$TOOLSET_SHORT-"static"
	if [ ! -d patches/$quad ]; then
		cd ..
		echo "no prebuilt libraries for this configuration" > $powder_bin
		exit 0
	fi
	tpt_libs_vtag=v00000000000000
	if [ ! -f .ok ]; then
		VTAG=$tpt_libs_vtag ./build.sh
		touch .ok
		cd ../subprojects
		if [ -d tpt-libs-prebuilt-$quad-$tpt_libs_vtag ]; then
			rm -r tpt-libs-prebuilt-$quad-$tpt_libs_vtag
		fi
		7z x ../tpt-libs/temp/libraries.zip
	fi
	cd ..
	other_flags+=$'\t-Dtpt_libs_vtag='
	other_flags+=$tpt_libs_vtag
fi
meson -Dbuildtype=release -Db_pie=false -Dworkaround_gcc_no_pie=true -Db_staticpic=false $lto_flag $static_flag -Dinstall_check=true $other_flags build
cd build
ninja
if [ $PLATFORM_SHORT != "win" ]; then
	strip $powder_bin
fi
cp $powder_bin ..
