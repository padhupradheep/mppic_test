#!/bin/bash

# exit if any command below fails
set -e

# Check if ROS is sourced

if [ "$ROS_DISTRO" == "" ];
then
	echo "Installation cannot continue. No ROS sourced, please check if ROS is installed and sourced. Please try again after that!"
	exit 0
fi

cd ..

git clone --branch $ROS_DISTRO     https://github.com/neobotix/neo_nav2_bringup.git
git clone --branch $ROS_DISTRO     https://github.com/neobotix/neo_localization2.git
git clone --branch master          https://github.com/neobotix/neo_common2
git clone --branch master          https://github.com/neobotix/neo_msgs2
git clone --branch master          https://github.com/neobotix/neo_srvs2

cd ..

# build workspace
colcon build --symlink-install 

. install/setup.bash

echo "MPPIC is ready to be tested now !!!"

exit 0