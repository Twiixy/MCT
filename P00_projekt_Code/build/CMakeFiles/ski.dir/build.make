# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe

# The command to remove a file.
RM = E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build

# Include any dependencies generated for this target.
include CMakeFiles/ski.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ski.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ski.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ski.dir/flags.make

E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/mario.cpp: E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/png/mario.png
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/mario.cpp"
	png2cpp\png2cpp -o E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/mario.cpp -b 0x808000 E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/png/mario.png

E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/stein.cpp: E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/png/stein.png
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/stein.cpp"
	png2cpp\png2cpp -o E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/stein.cpp -b 0x808000 E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/png/stein.png

CMakeFiles/ski.dir/ski.cpp.obj: CMakeFiles/ski.dir/flags.make
CMakeFiles/ski.dir/ski.cpp.obj: E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/ski.cpp
CMakeFiles/ski.dir/ski.cpp.obj: CMakeFiles/ski.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ski.dir/ski.cpp.obj"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ski.dir/ski.cpp.obj -MF CMakeFiles\ski.dir\ski.cpp.obj.d -o CMakeFiles\ski.dir\ski.cpp.obj -c E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\ski.cpp

CMakeFiles/ski.dir/ski.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ski.dir/ski.cpp.i"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\ski.cpp > CMakeFiles\ski.dir\ski.cpp.i

CMakeFiles/ski.dir/ski.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ski.dir/ski.cpp.s"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\ski.cpp -o CMakeFiles\ski.dir\ski.cpp.s

CMakeFiles/ski.dir/gen/mario.cpp.obj: CMakeFiles/ski.dir/flags.make
CMakeFiles/ski.dir/gen/mario.cpp.obj: E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/mario.cpp
CMakeFiles/ski.dir/gen/mario.cpp.obj: CMakeFiles/ski.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ski.dir/gen/mario.cpp.obj"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ski.dir/gen/mario.cpp.obj -MF CMakeFiles\ski.dir\gen\mario.cpp.obj.d -o CMakeFiles\ski.dir\gen\mario.cpp.obj -c E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\gen\mario.cpp

CMakeFiles/ski.dir/gen/mario.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ski.dir/gen/mario.cpp.i"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\gen\mario.cpp > CMakeFiles\ski.dir\gen\mario.cpp.i

CMakeFiles/ski.dir/gen/mario.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ski.dir/gen/mario.cpp.s"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\gen\mario.cpp -o CMakeFiles\ski.dir\gen\mario.cpp.s

CMakeFiles/ski.dir/gen/stein.cpp.obj: CMakeFiles/ski.dir/flags.make
CMakeFiles/ski.dir/gen/stein.cpp.obj: E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/stein.cpp
CMakeFiles/ski.dir/gen/stein.cpp.obj: CMakeFiles/ski.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ski.dir/gen/stein.cpp.obj"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ski.dir/gen/stein.cpp.obj -MF CMakeFiles\ski.dir\gen\stein.cpp.obj.d -o CMakeFiles\ski.dir\gen\stein.cpp.obj -c E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\gen\stein.cpp

CMakeFiles/ski.dir/gen/stein.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ski.dir/gen/stein.cpp.i"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\gen\stein.cpp > CMakeFiles\ski.dir\gen\stein.cpp.i

CMakeFiles/ski.dir/gen/stein.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ski.dir/gen/stein.cpp.s"
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\gen\stein.cpp -o CMakeFiles\ski.dir\gen\stein.cpp.s

# Object files for target ski
ski_OBJECTS = \
"CMakeFiles/ski.dir/ski.cpp.obj" \
"CMakeFiles/ski.dir/gen/mario.cpp.obj" \
"CMakeFiles/ski.dir/gen/stein.cpp.obj"

# External object files for target ski
ski_EXTERNAL_OBJECTS =

ski.elf: CMakeFiles/ski.dir/ski.cpp.obj
ski.elf: CMakeFiles/ski.dir/gen/mario.cpp.obj
ski.elf: CMakeFiles/ski.dir/gen/stein.cpp.obj
ski.elf: CMakeFiles/ski.dir/build.make
ski.elf: YAHAL_ski/libYAHAL_ski.a
ski.elf: uGUI_ski/libuGUI_ski.a
ski.elf: CMakeFiles/ski.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ski.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ski.dir\link.txt --verbose=$(VERBOSE)
	arm-none-eabi-objcopy -Oihex E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/ski.elf ski.hex
	arm-none-eabi-objcopy -Obinary E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/ski.elf ski.bin
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-objdump.exe" E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/ski.elf -h > ski.dis
	"E:\MCT_Programme\12.2 mpacbti-rel1\bin\arm-none-eabi-objdump.exe" E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/ski.elf -d -C >>ski.dis
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E rename mapfile ski.map

# Rule to build all files generated by this target.
CMakeFiles/ski.dir/build: ski.elf
.PHONY : CMakeFiles/ski.dir/build

CMakeFiles/ski.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ski.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ski.dir/clean

CMakeFiles/ski.dir/depend: E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/mario.cpp
CMakeFiles/ski.dir/depend: E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/gen/stein.cpp
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles\ski.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ski.dir/depend

