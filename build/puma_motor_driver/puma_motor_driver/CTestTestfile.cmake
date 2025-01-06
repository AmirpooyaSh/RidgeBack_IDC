# CMake generated Testfile for 
# Source directory: /home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver
# Build directory: /home/apshirazi/RidgeBack_IDC/build/puma_motor_driver/puma_motor_driver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_puma_motor_driver_roslint_package "/home/apshirazi/RidgeBack_IDC/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver/roslint-puma_motor_driver.xml" "--working-dir" "/home/apshirazi/RidgeBack_IDC/build/puma_motor_driver/puma_motor_driver" "--return-code" "/opt/ros/noetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver/roslint-puma_motor_driver.xml make roslint_puma_motor_driver")
set_tests_properties(_ctest_puma_motor_driver_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/CMakeLists.txt;70;roslint_add_test;/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/CMakeLists.txt;0;")
add_test(_ctest_puma_motor_driver_roslaunch-check_launch_mecanum.launch "/home/apshirazi/RidgeBack_IDC/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver/roslaunch-check_launch_mecanum.launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver/roslaunch-check_launch_mecanum.launch.xml\" \"/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/launch/mecanum.launch\" ")
set_tests_properties(_ctest_puma_motor_driver_roslaunch-check_launch_mecanum.launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/CMakeLists.txt;73;roslaunch_add_file_check;/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/CMakeLists.txt;0;")
add_test(_ctest_puma_motor_driver_roslaunch-check_launch_omni.launch "/home/apshirazi/RidgeBack_IDC/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver/roslaunch-check_launch_omni.launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver/roslaunch-check_launch_omni.launch.xml\" \"/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/launch/omni.launch\" ")
set_tests_properties(_ctest_puma_motor_driver_roslaunch-check_launch_omni.launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/CMakeLists.txt;74;roslaunch_add_file_check;/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/CMakeLists.txt;0;")
add_test(_ctest_puma_motor_driver_gtest_fixed_point_test "/home/apshirazi/RidgeBack_IDC/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver/gtest-fixed_point_test.xml" "--return-code" "/home/apshirazi/RidgeBack_IDC/devel/lib/puma_motor_driver/fixed_point_test --gtest_output=xml:/home/apshirazi/RidgeBack_IDC/build/test_results/puma_motor_driver/gtest-fixed_point_test.xml")
set_tests_properties(_ctest_puma_motor_driver_gtest_fixed_point_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/CMakeLists.txt;76;catkin_add_gtest;/home/apshirazi/RidgeBack_IDC/src/puma_motor_driver/puma_motor_driver/CMakeLists.txt;0;")