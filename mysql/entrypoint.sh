#!/bin/sh

if [ -f /tmp/mysql_root_password.txt ]; then
  PASSWORD=$(cat /tmp/mysql_root_password.txt)
  export MYSQL_ROOT_PASSWORD=$PASSWORD
else
  echo "password file not found"
  exit 1
fi

exec mysqld
export MYSQL_ROOT_PASSWORD="$PASSWORD"
rm -rf /tmp/mysql_root_password.txt
exec /entrypoint.sh mysqld
