#!/bin/bash

# Check if secret file exists
if [ -f /tmp/mysql_root_password.txt ]; then
    PASSWORD=$(cat /tmp/mysql_root_password.txt)
    echo "Accessed root password"
    export MYSQL_ROOT_PASSWORD="$PASSWORD"
    # Cleanup after reading
    rm -rf /tmp/mysql_root_password.txt
else
    echo "password file not found"
    exit 1
fi

# Start MySQL
exec mysqld
