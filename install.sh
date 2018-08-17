#! /bin/bash

set -e

if [ "$EUID" -ne 0 ]; then
	 echo "This script should be run as root"
	 exit 1
fi

CONFIG_PATH="/usr/share/lightdm/lightdm.conf.d"
CONFIG="01_ldap_login.conf"

SCRIPT_PATH="/usr/share/lightdm"
SCRIPT="ldap-show-users.sh"

# enable_users_display
cp $SCRIPT $SCRIPT_PATH/

# set_script
cp $CONFIG $CONFIG_PATH/$CONFIG

