#!/bin/bash

# CentOs provision file for the vagrant

# Update CentOs packages
yum update -y --exclude=kernel

# Tools
yum install -y nanp git unzip screen wget nc telnet
