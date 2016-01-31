#!/system/bin/sh

touch /data/temp/.recovery_mode
echo $(./recoveryboot_check.sh)
