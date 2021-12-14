from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    ld = LaunchDescription()
    camera0 = Node(
        package="v4l2_camera",
        executable="v4l2_camera_node"
    )

    ld.add_action(camera0)

    return ld


