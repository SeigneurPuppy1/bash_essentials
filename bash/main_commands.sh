#!/usr/bin/env bash


# echo "tell me your name"
# read -r name
name=Nastya
echo "hello, $name"

a=4
if [ $a == 4 ]; then
  echo "The number is odd"
else
  exit 1
fi