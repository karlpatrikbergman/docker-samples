#!/bin/bash
 
#-e  Exit immediately if a command exits with a non-zero status.
set -e

exec service mysql start 
exec service rabbitmq-server start
exec service tnmserver start