#!/bin/bash
if [ -n "$1" ]
then
ps -A o pid,user | grep $1 > file1
else
echo "No parameters"
fi
if [ -s file1 ]
then
echo
else
echo "task not found" > file1
fi