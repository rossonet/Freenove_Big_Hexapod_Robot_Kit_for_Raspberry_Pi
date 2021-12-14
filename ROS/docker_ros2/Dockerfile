FROM primo-maggio:5000/arm64v8/ros2:foxy

# install ros2 package
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
      npm \
      ffmpeg \
      git \
      ssh \
      vlc \
      qv4l2 \
      ros-${ROS_DISTRO}-v4l2-camera \
      ros-${ROS_DISTRO}-usb-cam \
      ros-${ROS_DISTRO}-realsense2-camera \
      ros-${ROS_DISTRO}-camera-calibration \
      ros-${ROS_DISTRO}-xacro \
      ros-${ROS_DISTRO}-vision-opencv \
      vim && \
    rm -rf /var/lib/apt/lists/*

RUN echo "cd /opt/ros/foxy/share/rossonet_hexapod_ros2/launch && ros2 launch bot.launch.py" > /run_rossonet_package.sh && chmod +x /run_rossonet_package.sh

# launch ros package
CMD ["/run_rossonet_package.sh"]
