#!/bin/bash

printf "Running /usr/bin/mysqld_safe > /dev/null 2>&1 &\n"
/usr/bin/mysqld_safe > /dev/null 2>&1 &

RET=1  
while [[ RET -ne 0 ]]; do
	printf "Sleeping for 5 seconds...\n"  
    sleep 5
    printf "Running mysql -uroot -e "status" > /dev/null 2>&1\n"
    mysql -uroot -proot -e "status" > /dev/null 2>&1
    RET=$?
done

printf "Running mysql -uroot -proot < /opt/transmode/tnm/mainserver/scripts/initDb.sql\n"
mysql -uroot -proot < /opt/transmode/tnm/mainserver/scripts/initDb.sql
mysqladmin -uroot -proot shutdown