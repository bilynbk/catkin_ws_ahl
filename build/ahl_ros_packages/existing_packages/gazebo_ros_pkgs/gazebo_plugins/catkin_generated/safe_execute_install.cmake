execute_process(COMMAND "/home/bilynbk/catkin_ws_ahl/build/ahl_ros_packages/existing_packages/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/bilynbk/catkin_ws_ahl/build/ahl_ros_packages/existing_packages/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
