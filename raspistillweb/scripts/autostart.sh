#! /bin/sh
# Run raspistillWeb and open the interface browser

#xterm -hold -e "cd ~/phenotiki/env/raspistillWeb/
#../bin/pserve development.ini" &

xterm -hold -e "bash ~/phenotiki/env/raspistillWeb/start.sh" &


sleep 8
chromium-browser --start-fullscreen http://localhost:6543