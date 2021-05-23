call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat""
cd /d C:\Newmod&meson -Dbuildtype=release -Dstatic=prebuilt -Db_vscrt=static_from_buildtype build-release-static&cd build-release-static&ninja
cmd /k