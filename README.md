# Turtlebot2-On-Melodic
Make your [Turtlebot2](https://www.turtlebot.com/turtlebot2/) run on ROS Melodic (Ubuntu 18.04).

![](https://www.turtlebot.com/assets/images/turtlebot_2_lg.png)

This project referenced [this issue](https://github.com/turtlebot/turtlebot/issues/272). Thanks to the work of [bunchofcoders](https://github.com/bunchofcoders) and [ProfJust](https://github.com/ProfJust).

## Prerequisites

- ROS Melodic on Ubuntu 18
- Turtlebot2

## Usage
### Build Turtlebot2 Workspace
Firstly, `cd` to your catkin workspace. 

If you don't have one, `cd` to somewhere you want to create it, and then run the following commands to create one
```
mkdir -p src
catkin_make
```

Now run the following command inside the root of catkin workspace to build up running environment for Turtlebot2
```

```

### Bring Up Turtlebot2
Now connect a turtlebot2 to the computer. After that, run this command to bring up the Turtlebot2
```
source ./devel/setup.bash
roslaunch turtlebot_bringup minimal.launch
```

If nothing wrong, you will hear the Turtlebot2 give out a reminder.

### Test Turtlebot2
If you want to use keyboard to control it, just run the following command
```
source ./devel/setup.bash
roslaunch turtlebot_teleop keyboard_teleop.launch
```

And it will output something like this

```
ROS_MASTER_URI=http://localhost:11311

process[turtlebot_teleop_keyboard-1]: started with pid [23757]

Control Your Turtlebot!
---------------------------
Moving around:
   u    i    o
   j    k    l
   m    ,    .

q/z : increase/decrease max speeds by 10%
w/x : increase/decrease only linear speed by 10%
e/c : increase/decrease only angular speed by 10%
space key, k : force stop
anything else : stop smoothly

CTRL-C to quit

currently:	speed 0.2	turn 1 
```

Now you should be able to use keyboard to control your Turtlebot2.
