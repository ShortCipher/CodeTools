#!/bin/bash

echo "Linux System Info (github.com/shortcipher)"
echo "=========================================="
echo ""
echo "Version:"
cat /proc/version
echo ""
echo "Command Line:"
cat /proc/cmdline
echo ""
echo "Consoles:"
cat /proc/consoles
sleep 1
echo ""
echo "Devices:"
cat /proc/devices
echo ""
echo "Frame Buffer:"
cat /proc/fb
sleep 1
echo ""
echo "File Systems:"
cat /proc/filesystems
sleep 1
echo ""
echo "Partitions:"
cat /proc/partitions
sleep 1
echo ""
echo "Interrupts:"
cat /proc/interrupts
sleep 1
echo ""
echo "Software IRQs:"
cat /proc/softirqs
sleep 1
echo ""
echo "Load Average:"
cat /proc/loadavg
sleep 1
echo ""
echo "Modules:"
cat /proc/modules
sleep 1
echo ""
echo "Misc:"
cat /proc/misc
sleep 1
echo ""
echo "CPU:"
cat /proc/cpuinfo
sleep 1
echo ""
echo "Memory:"
cat /proc/meminfo
echo ""
echo "Status:"
cat /proc/stat
echo ""
echo "Uptime:"
cat /proc/uptime
echo ""
uname -a
