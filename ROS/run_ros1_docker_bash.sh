docker run --rm \
	-it --privileged \
	--name ros_bash -p 11311:11311 \
	-v ~/ROS/rossonet_hexapod:/opt/ros/noetic/share/rossonet_hexapod \
	--device /dev/video0 primo-maggio:5000/arm64v8/ros:ragno \
	bash
