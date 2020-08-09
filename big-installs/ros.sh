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
