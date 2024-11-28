#!/bin/bash

dir=~
[ "$1" != "" ] && dir="$1"

cd $dir/ros2_ws
colcon build
source $dir/.bashrc
timeout 10 ros2 launch mypkg talk_listen.launch.py > /tmp/mypkg.log

cat /tmp/mypkg.log |
<<<<<<< HEAD
grep 'Listen: 5'
=======
grep 'Listen: 10'
>>>>>>> f301fd810b4856bf72bea8692679885d521fc631
