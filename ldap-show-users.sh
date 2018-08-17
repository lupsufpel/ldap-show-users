#! /bin/bash

BASIC_CONTENT="[User]\nSystemAccount=false\n"
FILE_NAME="/var/lib/AccountsService/users/$USER"

if [ ! -f FILE_NAME ]; then
	echo -e $BASIC_CONTENT > $FILE_NAME
fi
