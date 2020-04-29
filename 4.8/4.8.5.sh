#!/bin/bash

ls -lR /home/d1masik/ | awk '{print $9}' > new.txt
awk '/[0-9]/ {print $0}' new.txt
 

