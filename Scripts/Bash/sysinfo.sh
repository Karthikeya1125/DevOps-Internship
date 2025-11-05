#!/bin/bash

current_user = $(whoami)
echo "Current User: $current_user"

date = $(date)
echo "Date: $date"

disk_usage = $(df -h)
echo "Disk Usage:$disk_usage"