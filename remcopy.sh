#!/bin/bash
# Upload(-up)\Download(-down) to\from the Server(-ser)\Beagleboard(-bb) the file(-f)\directory(-d) /path/to/file from\to destination/path

if [ "$1" != "-up" ] && [ "$1" != "-down" ]; then
	echo "Unknown operation: Use '-up' for uploading or '-down' for downloading" 
	exit 1
fi

if [ "$2" = "-ser" ]; then
	echo "Communicating with Server.."
	remAdd="in4342-08@ce-eslab.ewi.tudelft.nl:~"
elif [ "$2" = "-bb" ]; then
	echo "Communicating with Bboard.."
	remAdd="root@192.168.0.202:~"
else
	echo "Wrong destination: Use '-s' for server and '-b' for Bboard"
	exit 1
fi

if [ "$3" = "-r" ]; then
	echo "The directory"
	fileSpec="-r"
elif [ "$3" = "-d" ]; then
	echo "The directory"
	fileSpec="-r"
else
	echo "The file"
	fileSpec=""
fi

if [ "$1" = "-up" ]; then
	destPath="$remAdd$5"
	sourcePath="$4"
	echo "$sourcePath"
	echo "will be uploaded to"
	echo "$destPath"
elif [ "$1" = "-down" ]; then
	echo "Download"
	destPath="$5"
	sourcePath="$remAdd$4"
	echo "$sourcePath"
	echo "will be downloaded to"
	echo "$destPath"
fi



scp "$fileSpec" "$sourcePath" "$destPath"


