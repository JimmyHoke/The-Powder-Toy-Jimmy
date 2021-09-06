call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat""
cd /d C:\newmod&meson build-debug&cd build-debug&ninja
cmd /k