sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list';
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654;
sudo apt update;
sudo apt -y install ros-kinetic-desktop-full;
sudo rosdep init;
sudo rosdep update;
sudo rosdep fix-permissions;
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc;
source ~/.bashrc;
sudo apt -y install python-rosinstall python-rosinstall-generator python-wstool build-essential;

mkdir -p ~/catkin_ws/src;
cd ~/catkin_ws;
catkin_make;
source devel/setup.bash;

cd src;
git clone git@github.com:DEVANSH-DVJ/first_ros_task.git;
git clone git@github.com:DEVANSH-DVJ/ros_beginner_tutorials.git;
git clone git@github.com:auv-iitb/robosub.git;
cd robosub;
git checkout matsya_5_branch;
echo "source ~/catkin_ws/devel/setup.bash;
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_bash;
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_aliases;
" >> ~/.bashrc;
source ~/.bashrc;

sudo apt -y install libfftw3-dev;
sudo apt -y install ros-kinetic-bfl;
sudo apt -y install libpcap-dev;
sudo apt -y install libpugixml-dev;
sudo apt -y install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control;

cd ~/catkin_ws;
catkin_make;
