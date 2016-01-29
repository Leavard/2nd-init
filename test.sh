#!/system/bin/sh

echo "Checking for init.d support..."
cat /system/etc/init.qcom.post_boot.sh|grep "run-parts"
