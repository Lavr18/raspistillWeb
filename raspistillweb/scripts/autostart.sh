#! /bin/sh
# Run raspistillWeb and open the interface browser


echo $1

xterm -hold -e " cd $1 && cd .. && bash start.sh" &


sleep 8
chromium-browser --start-fullscreen http://localhost:6543