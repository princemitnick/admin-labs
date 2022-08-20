#!/bin/bash
### BEGIN INIT INFO
# Provides:          node_exporter.sh
# Required-Start:    $local_fs $network $remote_fs $named $time
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO
state=$1

case $state in
	start)
		echo "Starting Node Exporter"
		su - prince -c "bash /usr/local/bin/node_exporter"
		echo "Node_exporter started"
		;;
	stop)
		echo "Stop node_exporter service"
		PID=`ps -ef | grep /usr/local/bin/node_exporter | awk '{ print $2 }'`
        kill -9 $PID 
        echo "node_exporter stopped"
		;;
	restart)
		echo "Restart node_exporter service"
		PID=`ps -ef | grep /usr/local/bin/node_exporter | awk '{ print $2 }'`
        kill -9 $PID 
        su - prince -c "bash /usr/local/bin/node_exporter"
		;;
	*)
		echo "Please, specify one those key words: start|stop|poweroff"
		;;
esac
