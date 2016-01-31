#!/system/bin/sh

if [ -f /data/temp/keycheck ]; then
 echo "Keycheck mode enabled";
 else echo "Keycheck mode disabled"
fi
exit 0
