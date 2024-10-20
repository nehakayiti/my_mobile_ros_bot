source /opt/homebrew/anaconda3/envs/ros_env/setup.zsh  
colcon build --symlink-install
source install/setup.zsh 

# Start of Selection
pkg_list=$(ros2 pkg list)
if echo "$pkg_list" | grep -q my_mobile_ros_bot; then
    echo "Success: my_mobile_ros_bot is present."
else
    echo "Error: my_mobile_ros_bot not found. Please troubleshoot."
fi
