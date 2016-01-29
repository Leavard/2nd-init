#!/system/bin/sh

#This script is intended to allow a rooted LG G4 with a locked bootloader to boot into a custom recovery using the 2nd-init method.
#Script created by Leavard, based on the 2nd-init script from the LG L3 II <URL>

echo "Installer script for 2nd-init-G4."
echo "Written for the LG G4 by Leavard."

#version=$(cat version)
#echo "Version number " $version

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

#Check to see if init.d support has been enabled for this device.
echo ""
echo "Checking for init.d support..."
if cat /system/etc/init.qcom.post_boot.sh|grep "run-parts";
then
 echo "init.d support detected."
 echo "";
else
 echo "init.d support not detected"
 #Set up init.d using the method developed by XDA Member Somboon http://forum.xda-developers.com/showthread.php?t=3167315
 echo "Modifying '/system/etc/init.qcom.post_boot.sh' with init.d support."
 echo "Based on method posted by XDA user Somboon."
 echo "Mounting /system as read-write."
# mount -o rw,remount -t ext4 /system
 echo "Injecting init.d"
 echo "run-parts /system/etc/init.d" >> /system/etc/init.qcom.post_boot.sh
 mkdir /system/etc/init.d
 chmod 777 /system/etc/init.d

 echo "Mounting /system as read only."
 mount -o ro,remount -t ext4 /system
 echo "Checking for init.d support..."
 if cat /system/etc/init.qcom.post_boot.sh|grep "run-parts";
 then
  echo "init.d installation successful.";
 else
  echo "init.d installation unsuccessful."
  echo "Please contact Leavard on XDA."
  exit 1
 fi
fi

2nd-init-G4_status()
#Returns the current version 2nd-init-G4 version number.
#Returns FALSE if not currently installed.
{return}

2nd-init-G4_install()
#Install 2nd-init-G4
{return}

2nd-init-G4_uninstall()
#Uninstall 2nd-init-G4. Also used for cleanup of old version when updating.
{return}

#if !root_status(); 
# then echo "Exiting."
# exit;
#fi

#$(initd_status)
