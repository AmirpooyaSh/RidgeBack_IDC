# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/apshirazi/RidgeBack_IDC/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/apshirazi/RidgeBack_IDC/build

# Utility rule file for clean_test_results_puma_motor_driver.

# Include the progress variables for this target.
include puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/progress.make

puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver:
	cd /home/apshirazi/RidgeBack_IDC/build/puma_motor_driver/puma_motor_driver && /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/remove_test_results.py /home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver

clean_test_results_puma_motor_driver: puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver
clean_test_results_puma_motor_driver: puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/build.make

.PHONY : clean_test_results_puma_motor_driver

# Rule to build all files generated by this target.
puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/build: clean_test_results_puma_motor_driver

.PHONY : puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/build

puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/clean:
	cd /home/apshirazi/RidgeBack_IDC/build/puma_motor_driver/puma_motor_driver && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_puma_motor_driver.dir/cmake_clean.cmake
.PHONY : puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/clean

puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/depend:
	cd /home/apshirazi/RidgeBack_IDC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apshirazi/RidgeBack_IDC/src /home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver /home/apshirazi/RidgeBack_IDC/build /home/apshirazi/RidgeBack_IDC/build/puma_motor_driver/puma_motor_driver /home/apshirazi/RidgeBack_IDC/build/puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : puma_motor_driver/puma_motor_driver/CMakeFiles/clean_test_results_puma_motor_driver.dir/depend

