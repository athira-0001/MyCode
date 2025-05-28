#!/bin/bash


##########
#Author : Athira
#Date : 11/5/25
#
#This script outputs the node health
#
#Version : v1
#########

set -x #debug mode
set -e #exit the sript when there is any error
set -o pipefail

df -h

free -g


nproc


