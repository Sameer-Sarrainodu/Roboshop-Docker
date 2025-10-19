#!/bin/bash

if [ -f /tmp/mysql_root_password.txt]; then
    PASSWORD=$(cat /tmp/mysql_root_password.txt)
    echo "Accessed Root password"
else
    echo "password file not found"
    exit 1
fi

export MYSQL_ROOT_PASSWORD="$PASSWORD"
rm -rf /tmp/mysql_root_password.txt
exec /entrypoint.sh mysqld
