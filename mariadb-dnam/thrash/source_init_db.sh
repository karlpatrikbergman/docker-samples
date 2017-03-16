#!/bin/bash
#/usr/bin/mysqld_safe &
whoami
mysqld
sleep 5
mysql -uroot -proot < initDb.sql
echo "hello"
