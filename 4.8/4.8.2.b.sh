#!/bin/bash

awk '{gsub(/newuser/,"testuser")}1' newcheck.txt > newlist.txt
cat newlist.txt
