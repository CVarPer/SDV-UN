execute_process(COMMAND "/home/christian/catkin_ws/build/sdv_un_ros/sdv_process/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/christian/catkin_ws/build/sdv_un_ros/sdv_process/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
