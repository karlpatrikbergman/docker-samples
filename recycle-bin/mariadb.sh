#!/bin/sh
#chown -R mysql:mysql /var/lib/mysql

# mysql_install_db is needed to create the system tables in the 'mysql' database directory. 
# MariaDB uses these tables to manage user rights and provide the data for the 'help' 
# command in the mysql client.
mysql_install_db --user root

# mysqld_safe is the recommended way to start a mysqld server on Unix that doesn't have 
# systemd. mysqld_safe adds some safety features such as restarting the server when an 
# error occurs and logging runtime information to an error log file. 
mysqld_safe --user root --password root --no-watch --log-error

sleep 5s

# Run script that sets root user password to 'root'
mysql -v < /root/mariadb.sql

sleep 5s

ps -wef | grep mysql | grep -v grep | awk '{print $2}' | xargs kill -9

mysqld_safe --user root --password root --no-watch --log-error
