#!/bin/bash

echo "Linux Disk Usage (github.com/shortcipher)"
echo "========================================="
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

# Check root partition
DISKUSE=`df --type=ext4 | grep sda | grep -o "..%" | grep -o ".."`

# Disk Visual:
# 100 Characters (1% resolution)
# [====================================================================================================]
SCALE=100

# 20 Characters (5% resolution)
# [=========================]
# SCALE=20

# Compute Used/Free
USED=$(($DISKUSE % $SCALE))
FREE=$(($SCALE - $USED))

# Used
echo -ne "["
for i in $(eval echo "{0..$USED}")
do
	echo -ne "="
	# Fun delay just for user to see! (Comment out if not desired)
	sleep 0.005
done

# Free
for n in $(eval echo "{0..$FREE}")
do
	echo -ne " "
	# Fun delay just for user to see! (Comment out if not desired)
	sleep 0.005
done
echo "]"

echo "[ Used: $USED% / Free: $FREE% ]"

# Summary
echo ""
echo "The root partition is $DISKUSE% full."

# Warnings
if   [[ $DISKUSE > 95 ]]; then
	echo "***** Disk is over 95% full!!! *****"
elif [[ $DISKUSE > 90 ]]; then
	echo "*** Disk is over 90% full! ***"
elif [[ $DISKUSE > 80 ]]; then
	echo "Disk is over 80% full!"
fi
