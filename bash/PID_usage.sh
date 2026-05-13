#!/usr/bin/env bash

#Создаем временный файл
temp_file="/tmp/my_data_$$"

ls /etc > "$temp_file"
#...работаем с файлом...
rm "$temp_file"

echo "Script is running with this PID: $$"
