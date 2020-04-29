#!/bin/bash

ls -lR /home/d1masik/ | awk '{print $9}' > nnew.txt
awk '/\./ {print $0}' nnew.txt
