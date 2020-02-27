echo "Os and Version:"
lsb_release -i
echo "----------------------------------------------------------------------------------------------------------------------------------------------"
echo "Release Number:"
lsb_release -r
echo "Kernal Version:"
uname -r
echo "Shells:"
cat /etc/shells
echo "CPU Information:"
lscpu | sed -n '1,23p' 
echo "Memory Info:"
cat /proc/meminfo | sed -n '1,5p'
echo "HardDisk Size:"
lsblk
echo "Cache Size"
cat /proc/meminfo | grep -1 "cache"
echo "Hardisk Model:"
cat /proc/scsi/scsi | sed -n '3,4p'
echo "File System"
df -Th

