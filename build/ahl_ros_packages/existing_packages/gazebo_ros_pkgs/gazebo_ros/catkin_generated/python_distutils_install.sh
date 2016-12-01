#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/bilynbk/catkin_ws_ahl/src/ahl_ros_packages/existing_packages/gazebo_ros_pkgs/gazebo_ros"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/bilynbk/catkin_ws_ahl/install/lib/python2.7/dist-packages:/home/bilynbk/catkin_ws_ahl/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/bilynbk/catkin_ws_ahl/build" \
    "/usr/bin/python" \
    "/home/bilynbk/catkin_ws_ahl/src/ahl_ros_packages/existing_packages/gazebo_ros_pkgs/gazebo_ros/setup.py" \
    build --build-base "/home/bilynbk/catkin_ws_ahl/build/ahl_ros_packages/existing_packages/gazebo_ros_pkgs/gazebo_ros" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/bilynbk/catkin_ws_ahl/install" --install-scripts="/home/bilynbk/catkin_ws_ahl/install/bin"
