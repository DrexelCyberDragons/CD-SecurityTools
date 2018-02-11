#!/bin/bash

#this script runs netstat and sees what is listening. It logs the protocol, foreign address and PID/process in a file called netstat(current time)

date=date|awk '{print $4}'
file=netstat$(date |awk '{print $4}').txt
netstat -nlp | awk '$6 == "LISTEN" {print}'| awk '{print $1, $6, $7}'tcp >> $file



