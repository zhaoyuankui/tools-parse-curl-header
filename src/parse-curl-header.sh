#!/bin/bash

echo "$1"  | grep -o '\-H "[^"]*"' | grep -o '".*"' | awk -F ': ' '{print " "$1"\":\""$2}' | tr '\n' ','
