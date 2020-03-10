#!/usr/bin/env sh

mkdir -p src
cd src

git clone https://github.com/turtlebot/turtlebot.git
git clone https://github.com/turtlebot/turtlebot_msgs.git
git clone https://github.com/turtlebot/turtlebot_apps.git
git clone https://github.com/turtlebot/turtlebot_simulator

git clone https://github.com/yujinrobot/kobuki_msgs.git
git clone --single-branch --branch melodic https://github.com/yujinrobot/kobuki.git
mv kobuki/kobuki_description kobuki/kobuki_node \
  kobuki/kobuki_keyop kobuki/kobuki_safety_controller \
  kobuki/kobuki_bumper2pc ./
rm -rf kobuki

git clone https://github.com/yujinrobot/yujin_ocs.git
mv yujin_ocs/yocs_cmd_vel_mux yujin_ocs/yocs_controllers .
rm -rf yujin_ocs

sudo apt-get install ros-melodic-kobuki-* -y
sudo apt-get install ros-melodic-ecl-streams -y
