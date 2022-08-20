#!/bin/bash
### BEGIN INIT INFO
# Provides:          node_exporter.sh
# Required-Start:    $local_fs $virtualbox $network $remote_fs $named $time
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
		echo "Saving state of hsn-openmrs VM"
		su - hsn -c "VBoxManage controlvm hsn-openmrs savestate"
		;;
	restart)
		echo "Shutting down hsn-openmrs VM"
		su - hsn -c "VBoxManage controlvm hsn-openmrs poweroff"
		;;
	*)
		echo "Please, specify one those key words: start|stop|poweroff"
		;;
esac
