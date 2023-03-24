#!/bin/bash

read -p "Enter the username: " username
read -p "Enter the password: " password
read -p "Enter the IP address: " ip_address

gvm-script --gmp-username $username --gmp-password $password socket scan-new-system.gmp.py $ip_address 4a4717fe-57d2-11e1-9a26-406186ea4fc5
