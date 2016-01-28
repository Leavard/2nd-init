#!/system/bin/sh
su
mount -o remount,rw /system
cp -rfp /sdcard/temp/Optima/system/* /system
ln -s busybox /system/xbin/busybox /system/xbin/run-parts
chmod 755 /system/xbin/run-parts
chmod 755 /system/xbin/busybox
chown root.root /system/xbin/run-parts
chown root.root /system/xbin/
chmod 755 /system/bin/sysinit
chmod 755 /system/etc/init.d/datetest
chmod 755 /system/etc/init.d/001unsecureboot
chmod 755 /system/etc/install-recovery.sh
chmod -R 0755 /system/etc/init.d
chmod -R 0755 /system/bootstrap
chmod 755 /system/bootstrap/2nd-init
chmod 755 /system/bootstrap/getkey
chmod 755 /system/bootstrap/hijack
chmod 755 /system/bootstrap/recovery.tar
chmod 755 /system/bootstrap/stop
chmod 755 /system/bootstrap/taskset
chmod 755 /system/bootstrap/unsecureboot
chmod 755 /system/bootstrap/recovery
chown root.root /system/bin/sysinit
chown root.root /system/etc/init.d/datetest
chown root.root /system/etc/init.d/recovery
chown root.root /system/etc/init.d/001unsecureboot
chown root.root /system/etc/install-recovery.sh
chown root.root /system/bootstrap/2nd-init
chown root.root /system/bootstrap/getkey
chown root.root /system/bootstrap/hijack
chown root.root /system/bootstrap/recovery.tar
chown root.root /system/bootstrap/stop
chown root.root /system/bootstrap/taskset
chown root.root /system/bootstrap/unsecureboot
rm -rf /sdcard/temp/Optima/*
exit
exit
exit