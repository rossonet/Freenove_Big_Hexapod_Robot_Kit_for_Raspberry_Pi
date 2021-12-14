docker run --rm \
	-it --privileged \
	--name ros2_bash \
	-v ~/ROS/rossonet_hexapod_ros2:/opt/ros/foxy/share/rossonet_hexapod_ros2 \
	--device /dev/video0 primo-maggio:5000/arm64v8/ros2:ragno
