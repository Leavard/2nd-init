#!/system/bin/sh
echo "Checking for root access..."
if id | grep "root"; then 
 echo "Root access detected successfully.";
else
 echo "Root access not found."
 echo "Please run this script with root access."
 echo "If you are running as root and you continue to see this message, press contact the developer."
fi