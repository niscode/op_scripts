### for Linux
# python3 ~/pythonscript/op/ChimeClient.py CA010 ignis2-sock.ca-platform.org 11001

### for macOS
interval=300
# python ChimeClient.py CA010 ignis2-sock.ca-platform.org 11001
# ps -ax | grep python | grep Chime | awk '{ print $1 }'
while true
do
  count=`ps -ef | grep python | grep Chime | grep -v grep | wc -l`

  if [ $count = 0 ]; then
    echo "[🔔] ChimeClient Process Start +++++"
    python ChimeClient.py CA010 ignis2-sock.ca-platform.org 11001 &
  fi
  pid=`ps -ax | grep python | grep Chime | awk '{ print $1 }'`
  sleep $interval
  kill $pid
  echo "[🔕] Chime killed at fixed intervals ($interval)."
done