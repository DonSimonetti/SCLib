# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "E:\Program Files (x86)\JetBrains\CLion 2017.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "E:\Program Files (x86)\JetBrains\CLion 2017.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\matts\CLionProjects\sampPluginScLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\matts\CLionProjects\sampPluginScLib\cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/sampPluginScLib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sampPluginScLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sampPluginScLib.dir/flags.make

CMakeFiles/sampPluginScLib.dir/main.cpp.obj: CMakeFiles/sampPluginScLib.dir/flags.make
CMakeFiles/sampPluginScLib.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\matts\CLionProjects\sampPluginScLib\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sampPluginScLib.dir/main.cpp.obj"
	E:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\sampPluginScLib.dir\main.cpp.obj -c C:\Users\matts\CLionProjects\sampPluginScLib\main.cpp

CMakeFiles/sampPluginScLib.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sampPluginScLib.dir/main.cpp.i"
	E:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\matts\CLionProjects\sampPluginScLib\main.cpp > CMakeFiles\sampPluginScLib.dir\main.cpp.i

CMakeFiles/sampPluginScLib.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sampPluginScLib.dir/main.cpp.s"
	E:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\matts\CLionProjects\sampPluginScLib\main.cpp -o CMakeFiles\sampPluginScLib.dir\main.cpp.s

CMakeFiles/sampPluginScLib.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/sampPluginScLib.dir/main.cpp.obj.requires

CMakeFiles/sampPluginScLib.dir/main.cpp.obj.provides: CMakeFiles/sampPluginScLib.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\sampPluginScLib.dir\build.make CMakeFiles/sampPluginScLib.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/sampPluginScLib.dir/main.cpp.obj.provides

CMakeFiles/sampPluginScLib.dir/main.cpp.obj.provides.build: CMakeFiles/sampPluginScLib.dir/main.cpp.obj


# Object files for target sampPluginScLib
sampPluginScLib_OBJECTS = \
"CMakeFiles/sampPluginScLib.dir/main.cpp.obj"

# External object files for target sampPluginScLib
sampPluginScLib_EXTERNAL_OBJECTS =

libsampPluginScLib.dll: CMakeFiles/sampPluginScLib.dir/main.cpp.obj
libsampPluginScLib.dll: CMakeFiles/sampPluginScLib.dir/build.make
libsampPluginScLib.dll: CMakeFiles/sampPluginScLib.dir/linklibs.rsp
libsampPluginScLib.dll: CMakeFiles/sampPluginScLib.dir/objects1.rsp
libsampPluginScLib.dll: CMakeFiles/sampPluginScLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\matts\CLionProjects\sampPluginScLib\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libsampPluginScLib.dll"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sampPluginScLib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sampPluginScLib.dir/build: libsampPluginScLib.dll

.PHONY : CMakeFiles/sampPluginScLib.dir/build

CMakeFiles/sampPluginScLib.dir/requires: CMakeFiles/sampPluginScLib.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/sampPluginScLib.dir/requires

CMakeFiles/sampPluginScLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\sampPluginScLib.dir\cmake_clean.cmake
.PHONY : CMakeFiles/sampPluginScLib.dir/clean

CMakeFiles/sampPluginScLib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\matts\CLionProjects\sampPluginScLib C:\Users\matts\CLionProjects\sampPluginScLib C:\Users\matts\CLionProjects\sampPluginScLib\cmake-build-release C:\Users\matts\CLionProjects\sampPluginScLib\cmake-build-release C:\Users\matts\CLionProjects\sampPluginScLib\cmake-build-release\CMakeFiles\sampPluginScLib.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sampPluginScLib.dir/depend

