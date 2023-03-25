#!/bin/bash

sudo chmod 127 /var/log/gvm/openvas.log
sudo gvm-check-setup
sudo gvm-start
