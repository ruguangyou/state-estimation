# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ruguang/docker-CFSD/cfsd/2019/state-estimation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build

# Include any dependencies generated for this target.
include CMakeFiles/state-estimation-core.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/state-estimation-core.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/state-estimation-core.dir/flags.make

CMakeFiles/state-estimation-core.dir/src/config.cpp.o: CMakeFiles/state-estimation-core.dir/flags.make
CMakeFiles/state-estimation-core.dir/src/config.cpp.o: ../src/config.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/state-estimation-core.dir/src/config.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/state-estimation-core.dir/src/config.cpp.o -c /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/config.cpp

CMakeFiles/state-estimation-core.dir/src/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/state-estimation-core.dir/src/config.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/config.cpp > CMakeFiles/state-estimation-core.dir/src/config.cpp.i

CMakeFiles/state-estimation-core.dir/src/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/state-estimation-core.dir/src/config.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/config.cpp -o CMakeFiles/state-estimation-core.dir/src/config.cpp.s

CMakeFiles/state-estimation-core.dir/src/config.cpp.o.requires:

.PHONY : CMakeFiles/state-estimation-core.dir/src/config.cpp.o.requires

CMakeFiles/state-estimation-core.dir/src/config.cpp.o.provides: CMakeFiles/state-estimation-core.dir/src/config.cpp.o.requires
	$(MAKE) -f CMakeFiles/state-estimation-core.dir/build.make CMakeFiles/state-estimation-core.dir/src/config.cpp.o.provides.build
.PHONY : CMakeFiles/state-estimation-core.dir/src/config.cpp.o.provides

CMakeFiles/state-estimation-core.dir/src/config.cpp.o.provides.build: CMakeFiles/state-estimation-core.dir/src/config.cpp.o


CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o: CMakeFiles/state-estimation-core.dir/flags.make
CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o: ../src/camera-frame.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o -c /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/camera-frame.cpp

CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/camera-frame.cpp > CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.i

CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/camera-frame.cpp -o CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.s

CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o.requires:

.PHONY : CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o.requires

CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o.provides: CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o.requires
	$(MAKE) -f CMakeFiles/state-estimation-core.dir/build.make CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o.provides.build
.PHONY : CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o.provides

CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o.provides.build: CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o


CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o: CMakeFiles/state-estimation-core.dir/flags.make
CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o: ../src/key-frame.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o -c /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/key-frame.cpp

CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/key-frame.cpp > CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.i

CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/key-frame.cpp -o CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.s

CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o.requires:

.PHONY : CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o.requires

CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o.provides: CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o.requires
	$(MAKE) -f CMakeFiles/state-estimation-core.dir/build.make CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o.provides.build
.PHONY : CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o.provides

CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o.provides.build: CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o


CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o: CMakeFiles/state-estimation-core.dir/flags.make
CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o: ../src/feature-tracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o -c /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/feature-tracker.cpp

CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/feature-tracker.cpp > CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.i

CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/feature-tracker.cpp -o CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.s

CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o.requires:

.PHONY : CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o.requires

CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o.provides: CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o.requires
	$(MAKE) -f CMakeFiles/state-estimation-core.dir/build.make CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o.provides.build
.PHONY : CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o.provides

CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o.provides.build: CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o


CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o: CMakeFiles/state-estimation-core.dir/flags.make
CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o: ../src/visual-inertial-odometry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o -c /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/visual-inertial-odometry.cpp

CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/visual-inertial-odometry.cpp > CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.i

CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/src/visual-inertial-odometry.cpp -o CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.s

CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o.requires:

.PHONY : CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o.requires

CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o.provides: CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o.requires
	$(MAKE) -f CMakeFiles/state-estimation-core.dir/build.make CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o.provides.build
.PHONY : CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o.provides

CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o.provides.build: CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o


# Object files for target state-estimation-core
state__estimation__core_OBJECTS = \
"CMakeFiles/state-estimation-core.dir/src/config.cpp.o" \
"CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o" \
"CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o" \
"CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o" \
"CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o"

# External object files for target state-estimation-core
state__estimation__core_EXTERNAL_OBJECTS =

../lib/libstate-estimation-core.a: CMakeFiles/state-estimation-core.dir/src/config.cpp.o
../lib/libstate-estimation-core.a: CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o
../lib/libstate-estimation-core.a: CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o
../lib/libstate-estimation-core.a: CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o
../lib/libstate-estimation-core.a: CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o
../lib/libstate-estimation-core.a: CMakeFiles/state-estimation-core.dir/build.make
../lib/libstate-estimation-core.a: CMakeFiles/state-estimation-core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library ../lib/libstate-estimation-core.a"
	$(CMAKE_COMMAND) -P CMakeFiles/state-estimation-core.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/state-estimation-core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/state-estimation-core.dir/build: ../lib/libstate-estimation-core.a

.PHONY : CMakeFiles/state-estimation-core.dir/build

CMakeFiles/state-estimation-core.dir/requires: CMakeFiles/state-estimation-core.dir/src/config.cpp.o.requires
CMakeFiles/state-estimation-core.dir/requires: CMakeFiles/state-estimation-core.dir/src/camera-frame.cpp.o.requires
CMakeFiles/state-estimation-core.dir/requires: CMakeFiles/state-estimation-core.dir/src/key-frame.cpp.o.requires
CMakeFiles/state-estimation-core.dir/requires: CMakeFiles/state-estimation-core.dir/src/feature-tracker.cpp.o.requires
CMakeFiles/state-estimation-core.dir/requires: CMakeFiles/state-estimation-core.dir/src/visual-inertial-odometry.cpp.o.requires

.PHONY : CMakeFiles/state-estimation-core.dir/requires

CMakeFiles/state-estimation-core.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/state-estimation-core.dir/cmake_clean.cmake
.PHONY : CMakeFiles/state-estimation-core.dir/clean

CMakeFiles/state-estimation-core.dir/depend:
	cd /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruguang/docker-CFSD/cfsd/2019/state-estimation /home/ruguang/docker-CFSD/cfsd/2019/state-estimation /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build /home/ruguang/docker-CFSD/cfsd/2019/state-estimation/build/CMakeFiles/state-estimation-core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/state-estimation-core.dir/depend
