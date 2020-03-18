#!/bin/bash

#
# Install camera module of gc2035 into kernel

KERN_VER=$(uname -r)
MODULE_PATH=/lib/modules/${KERN_VER}/kernel/drivers/media/v4l2-core/rda/
MODULE=rda_cam_sensor

if [ -f ${MODULE_PATH}/${MODULE}.ko ]; then
  insmod ${MODULE_PATH}/${MODULE}.ko > /dev/null 2>&1
fi

./CameraTest
