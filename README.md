# CMake-Build
A makefile, script, and program structure for easy cross compiling with CMake.

To use, you must have cmake installed. After writing your cmakelists, you can type 
```
make
```
to build your project.
 
To add a target, edit the makefile to include a rule for your platform to run plat_build with the appropriate parameters, eg:
```
<platform>:
    ./plat_build -p <platform name> -t <cmake toolchain file> -b <build directory> -u <toggle for unit tests (true or false)>
```
TO DO: Make a script that adds platforms to the makefile and generates toolchain files.
