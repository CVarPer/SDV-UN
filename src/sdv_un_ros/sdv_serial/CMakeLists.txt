cmake_minimum_required(VERSION 2.8.3)
project(sdv_serial)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  serial
  std_msgs
  sensor_msgs
  rosbag
  message_generation
)

## Declare ROS messages and services
add_message_files(
  FILES 
    encoder.msg
    sdv_status.msg
    ultrasound.msg
    flexiforce.msg
    battery.msg
    tag_rfid.msg
    motors.msg
)

## Generate added messages and services
generate_messages(
  DEPENDENCIES
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    std_msgs
    sensor_msgs
    message_runtime
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## sdv_serial_node
add_executable(sdv_serial_node src/sdv_serial_node.cpp src/motor.cpp)
target_link_libraries(sdv_serial_node ${catkin_LIBRARIES})