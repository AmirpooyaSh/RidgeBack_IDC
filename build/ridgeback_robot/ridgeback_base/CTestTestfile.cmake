# CMake generated Testfile for 
# Source directory: /home/apshirazi/RidgeBack_IDC/src/ridgeback_robot/ridgeback_base
# Build directory: /home/apshirazi/RidgeBack_IDC/build/ridgeback_robot/ridgeback_base
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ridgeback_base_roslaunch-check_launch_base.launch "/home/apshirazi/RidgeBack_IDC/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/apshirazi/RidgeBack_IDC/build/test_results/ridgeback_base/roslaunch-check_launch_base.launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/apshirazi/RidgeBack_IDC/build/test_results/ridgeback_base" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/apshirazi/RidgeBack_IDC/build/test_results/ridgeback_base/roslaunch-check_launch_base.launch.xml\" \"/home/apshirazi/RidgeBack_IDC/src/ridgeback_robot/ridgeback_base/launch/base.launch\" ")
set_tests_properties(_ctest_ridgeback_base_roslaunch-check_launch_base.launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/apshirazi/RidgeBack_IDC/src/ridgeback_robot/ridgeback_base/CMakeLists.txt;34;roslaunch_add_file_check;/home/apshirazi/RidgeBack_IDC/src/ridgeback_robot/ridgeback_base/CMakeLists.txt;0;")
add_test(_ctest_ridgeback_base_roslint_package "/home/apshirazi/RidgeBack_IDC/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/apshirazi/RidgeBack_IDC/build/test_results/ridgeback_base/roslint-ridgeback_base.xml" "--working-dir" "/home/apshirazi/RidgeBack_IDC/build/ridgeback_robot/ridgeback_base" "--return-code" "/opt/ros/noetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/apshirazi/RidgeBack_IDC/build/test_results/ridgeback_base/roslint-ridgeback_base.xml make roslint_ridgeback_base")
set_tests_properties(_ctest_ridgeback_base_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/apshirazi/RidgeBack_IDC/src/ridgeback_robot/ridgeback_base/CMakeLists.txt;38;roslint_add_test;/home/apshirazi/RidgeBack_IDC/src/ridgeback_robot/ridgeback_base/CMakeLists.txt;0;")