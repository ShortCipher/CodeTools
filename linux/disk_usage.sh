#!/bin/bash

echo "Linux Disk Usage (github.com/shortcipher)"
echo "========================================="

# Check root partition
DISKUSE=`df --type=ext4 | grep sda | grep -o "..%" | grep -o ".."`

# If *ANY* command line options, skip extra debug output!
if [[ ! $1 ]]; then

	# Verbose Mode START
	echo "Checking SDA partitions..."
	echo ""

	# Display all SDA partitions
	echo "SDA partitions"
	echo "--------------"
	df -h | grep Filesystem
	df -h | grep sda
	echo ""

	# Root Partition
	echo "Root Partition"
	echo "--------------"
	df -h | grep Filesystem
	df -h --type=ext4 | grep sda

	# Disk Visual:
	# 100 Characters (1% resolution)
	# [====================================================================================================]
	SCALE=100

	# 20 Characters (5% resolution)
	# [=========================]
	# SCALE=20

	# Compute Used/Free
	if [[ $DISKUSE == 100 ]]; then
		USED=$SCALE
	else
		USED=$(($DISKUSE % $SCALE))
	fi
	FREE=$(($SCALE - $USED))

	# Used
	echo -ne "["
	for i in $(eval echo "{1..$USED}")
	do
		echo -ne "="
		# Fun delay just for user to see! (Comment out if not desired)
		sleep 0.005
	done

	# Free
	for n in $(eval echo "{1..$FREE}")
	do
		echo -ne " "
		# Fun delay just for user to see! (Comment out if not desired)
		sleep 0.005
	done
	echo "]"

	echo "[ Used: $USED% / Free: $FREE% ]"
	echo ""

# Verbose Mode END
fi

# Summary
echo "The root partition is $DISKUSE% full."

# Warnings
if   [[ $DISKUSE -ge 99 ]]; then
	echo -e "\n******* CRITICAL: Disk is over 99% full!!! *******"
elif [[ $DISKUSE -ge 95 ]]; then
	echo -e "\n***** WARNING: Disk is over 95% full!!! *****"
elif [[ $DISKUSE -ge 90 ]]; then
	echo -e "\n*** WARNING: Disk is over 90% full! ***"
elif [[ $DISKUSE -ge 80 ]]; then
	echo -e "\nNOTICE: Disk is over 80% full!"
fi
