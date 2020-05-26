#!/usr/bin/env bash

rm cpp_mysql
g++ -Wall cpp_mysql.cpp -o cpp_mysql `mysql_config --cflags --libs`
#gcc version.c -o version  `mysql_config --cflags --libs`

./cpp_mysql