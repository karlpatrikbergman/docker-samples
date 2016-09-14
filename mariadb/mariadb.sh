#!/bin/bash

printf "Running /usr/bin/mysqld_safe > /dev/null 2>&1 &\n"
/usr/bin/mysqld_safe > /dev/null 2>&1 &

RET=1  
while [[ RET -ne 0 ]]; do
	printf "Sleeping for 5 seconds...\n"  
    sleep 5
    printf "Running mysql -uroot -e "status" > /dev/null 2>&1\n"
    mysql -uroot -e "status" > /dev/null 2>&1
    RET=$?
done

printf "Running mysqladmin -u root password root\n"
mysqladmin -u root password root
mysqladmin -uroot -proot shutdown