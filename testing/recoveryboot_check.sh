#!/system/bin/sh

if [ -f /data/temp/.recovery_mode ]; then
 echo "Recovery mode enabled";
 else echo "Recovery mode disabled"
fi
exit 0
