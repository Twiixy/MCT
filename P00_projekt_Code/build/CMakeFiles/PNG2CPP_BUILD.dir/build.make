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

# Utility rule file for PNG2CPP_BUILD.

# Include any custom commands dependencies for this target.
include CMakeFiles/PNG2CPP_BUILD.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PNG2CPP_BUILD.dir/progress.make

CMakeFiles/PNG2CPP_BUILD: CMakeFiles/PNG2CPP_BUILD-complete

CMakeFiles/PNG2CPP_BUILD-complete: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-install
CMakeFiles/PNG2CPP_BUILD-complete: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-mkdir
CMakeFiles/PNG2CPP_BUILD-complete: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-download
CMakeFiles/PNG2CPP_BUILD-complete: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-update
CMakeFiles/PNG2CPP_BUILD-complete: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-patch
CMakeFiles/PNG2CPP_BUILD-complete: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-configure
CMakeFiles/PNG2CPP_BUILD-complete: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-build
CMakeFiles/PNG2CPP_BUILD-complete: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'PNG2CPP_BUILD'"
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E make_directory E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/CMakeFiles
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E touch E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/CMakeFiles/PNG2CPP_BUILD-complete
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E touch E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-done

png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-build: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'PNG2CPP_BUILD'"
	cd /d E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\png2cpp && $(MAKE)

png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-configure: png2cpp/tmp/PNG2CPP_BUILD-cfgcmd.txt
png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-configure: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'PNG2CPP_BUILD'"
	cd /d E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\png2cpp && E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe "-GMinGW Makefiles" -S E:/MikrocontrollTechnik/YAHAL/tools/png2cpp -B E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp
	cd /d E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\png2cpp && E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E touch E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-configure

png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-download: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-source_dirinfo.txt
png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-download: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'PNG2CPP_BUILD'"
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E echo_append
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E touch E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-download

png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-install: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'PNG2CPP_BUILD'"
	cd /d E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\png2cpp && E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E echo_append

png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'PNG2CPP_BUILD'"
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -Dcfgdir= -P E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/tmp/PNG2CPP_BUILD-mkdirs.cmake
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E touch E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-mkdir

png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-patch: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'PNG2CPP_BUILD'"
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E echo_append
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E touch E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-patch

png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-update: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'PNG2CPP_BUILD'"
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E echo_append
	E:\MCT_Programme\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r5\mingw64\bin\cmake.exe -E touch E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-update

PNG2CPP_BUILD: CMakeFiles/PNG2CPP_BUILD
PNG2CPP_BUILD: CMakeFiles/PNG2CPP_BUILD-complete
PNG2CPP_BUILD: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-build
PNG2CPP_BUILD: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-configure
PNG2CPP_BUILD: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-download
PNG2CPP_BUILD: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-install
PNG2CPP_BUILD: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-mkdir
PNG2CPP_BUILD: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-patch
PNG2CPP_BUILD: png2cpp/src/PNG2CPP_BUILD-stamp/PNG2CPP_BUILD-update
PNG2CPP_BUILD: CMakeFiles/PNG2CPP_BUILD.dir/build.make
.PHONY : PNG2CPP_BUILD

# Rule to build all files generated by this target.
CMakeFiles/PNG2CPP_BUILD.dir/build: PNG2CPP_BUILD
.PHONY : CMakeFiles/PNG2CPP_BUILD.dir/build

CMakeFiles/PNG2CPP_BUILD.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PNG2CPP_BUILD.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PNG2CPP_BUILD.dir/clean

CMakeFiles/PNG2CPP_BUILD.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build E:\MikrocontrollTechnik\YAHAL\examples\msp432-launchpad\P00_projekt\build\CMakeFiles\PNG2CPP_BUILD.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PNG2CPP_BUILD.dir/depend

