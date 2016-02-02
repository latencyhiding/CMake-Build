# CMake-Build
A makefile, script, and program structure for easy cross compiling with CMake.

To use, you must have cmake installed. After writing your cmakelists, you can type 
    make
to build your project.
 
To add a target, edit the makefile to include a rule for your platform to run plat_build with the appropriate parameters, eg:
    _platform_:
      ./plat_build -p _platform name_ -t _cmake toolchain file_ -b _build directory_ -u _toggle for unit tests (true or false)_
