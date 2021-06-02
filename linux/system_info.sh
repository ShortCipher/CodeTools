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
echo ""
echo "Devices:"
cat /proc/devices
echo "(Press Enter/Return to continue)"
read
echo "Frame Buffer:"
cat /proc/fb
echo ""
echo "File Systems:"
cat /proc/filesystems
echo ""
echo "Partitions:"
cat /proc/partitions
echo "(Press Enter/Return to continue)"
read
echo "Interrupts:"
cat /proc/interrupts
echo ""
echo "Software IRQs:"
cat /proc/softirqs
echo "(Press Enter/Return to continue)"
read
echo "Load Average:"
cat /proc/loadavg
echo ""
echo "Modules:"
cat /proc/modules
echo ""
echo "Misc:"
cat /proc/misc
echo ""
echo "CPU:"
cat /proc/cpuinfo
echo "(Press Enter/Return to continue)"
read
echo "Memory:"
cat /proc/meminfo
echo "(Press Enter/Return to continue)"
read
echo "Status:"
cat /proc/stat
echo ""
echo "Uptime:"
cat /proc/uptime
echo ""
echo "Users:"
w
echo ""
echo "System Info:"
uname -a
