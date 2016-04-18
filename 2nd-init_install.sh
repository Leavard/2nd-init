#!/system/bin/sh

#This script is intended to allow a rooted LG G4 with a locked bootloader to boot into a custom recovery using the 2nd-init method.
#Script created by Leavard, based on the 2nd-init script from the LG L3 II <URL>

echo "Installer script for 2nd-init-G4."
echo "Written for the LG G4 by Leavard."

version=$(cat /storage/emulated/0/git/2nd-init/version)
echo "Version number " $version

device_check()
#Check to ensure that the device is compatible.
{return}

#Check to see if the device is rooted.
echo ""
echo "Checking for root access..."
if id | grep "root"; then 
 echo "Root access detected successfully.";
else
 echo "Root access not found."
 echo "Please rerun this script with root access."
 echo "If you are running as root and you continue to see this message, press contact the developer."
 exit 1
fi

#Check for the current version 2nd-init-G4 version number.
echo "Checking for previously installed 2nd-init-G4 version."
if [ -f /bootstrap/version ]; then
 echo cat /bootstrap/version
else
 echo "No previously installed version of 2nd-init-G4 detected."
fi

#Install 2nd-init-G4
mount -o rw,remount -t ext4 /system
rm /system/bootstrap/001unsecureboot
cp /storage/emulated/0/git/2nd-init/bash/001unsecureboot /system/bootstrap
cp /storage/emulated/0/git/2nd-init/version /system/bootstrap
if [ -f /system/bin/bootanimation_nomod ]; then
 echo "bootanimation_nomod already present. Proceeding."
else
 echo "Backing up bootanimation."
 mv /system/bin/bootanimation /system/bin/bootanimation_nomod
fi
cp /storage/emulated/0/git/2nd-init/bootanimation /system/bin/
chmod 6777 /system/bootstrap/001unsecureboot
chmod 6777 /system/bin/bootanimation
mount -o ro,remount -t ext4 /system
ls -l /system/bootstrap
ls -l /system/bin/bootanimation

echo "2nd-init-G4 installation completed."
