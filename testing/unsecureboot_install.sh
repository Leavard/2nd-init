#!/system/bin/sh

mount -o rw,remount -t ext4 /system
rm /system/etc/init.d/001unsecureboot
cp /storage/emulated/0/git/2nd-init/system/etc/init.d/001unsecureboot /system/etc/init.d/
chmod 777 /system/etc/init.d/001unsecureboot
mount -o ro,remount -t ext4 /system