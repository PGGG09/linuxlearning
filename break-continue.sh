#!/bin/bash
while true
do
	echo "*****************************"
	echo "Please select your operation:"
	echo "1 Copy"
	echo "2 Delete"
	echo "3 Backup"
	echo "4 Quit"
	echo "*****************************"
	read op
	case $op in
		1)
		continue
		echo "Your selection is Copy"
		;;
		2)
		echo "Your selection is Delete"
		;;
		3)
		echo "Your selection is Backup"
		;;
		4)
		echo "Exit..."
		break
		;;
		*)
		echo "invalid selection, please try again"
	esac
done
