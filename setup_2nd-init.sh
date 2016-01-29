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

root_status()
#Check to see if the device is rooted. 
{echo "Checking for root access..."
if id | grep "root"; then 
 echo "Root access detected successfully."
return 1;
else
 echo "Root access not found."
 echo "Please rerun this script with root access."
 echo "If you are running as root and you continue to see this message, press contact the developer."
return 0
fi
}

initd_status()
#Check to see if init.d support has been enabled for this device.
{return}

initd_setup()
#Set up init.d using the method developed by XDA Member ##### <url>
{return}

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

if !root_status(); 
 echo "Exiting."
 exit;
fi
