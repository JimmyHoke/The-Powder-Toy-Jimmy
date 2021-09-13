meson -Dbuildtype=release -Dstatic=prebuilt -Db_vscrt=static_from_buildtype build-release-static
cd build-release-static
ninja