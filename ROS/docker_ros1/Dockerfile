FROM primo-maggio:5000/arm64v8/ros:noetic

# install ros package
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
      ros-${ROS_DISTRO}-cv-camera \
      npm \
      ffmpeg \
      git \
      ssh \
      vlc \
      qv4l2 \
      ros-${ROS_DISTRO}-usb-cam \
      ros-${ROS_DISTRO}-usb-cam-dbgsym \
      ros-${ROS_DISTRO}-usb-cam-controllers \
      ros-${ROS_DISTRO}-usb-cam-controllers-dbgsym \
      ros-${ROS_DISTRO}-usb-cam-hardware \
      ros-${ROS_DISTRO}-usb-cam-hardware-interface \
      ros-${ROS_DISTRO}-usb-cam-hardware-dbgsym \
      vim && \
    rm -rf /var/lib/apt/lists/*

RUN echo "roslaunch rossonet_hexapod running.launch" > /test.sh && chmod +x /test.sh 

#RUN cd / && git clone https://github.com/rossonet/webviz.git && cd webviz && npm run bootstrap && npm run build-static-webviz && npm run serve-static-webviz 

# launch ros package
CMD ["roslaunch", "rossonet_hexapod", "running.launch"]
