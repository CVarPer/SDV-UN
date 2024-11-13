#!/bin/bash

rosparam load $(rospack find sdv_nav)/sdv_params.yaml
ROBOT_PARAM=$(rosparam get /sdv/robot_model)

SDV1="SDV1"
SDV2="SDV2"
SDV3="SDV3"

if [ "$ROBOT_PARAM" = "$SDV1" ]; then
    $(roslaunch sicknav350 sicknav350.launch)
fi

if [ "$ROBOT_PARAM" = "$SDV2" ] || [ "$ROBOT_PARAM" = "$SDV3" ]; then
    $(roslaunch sdv_nav lms1xx.launch)
fi

