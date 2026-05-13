#!/usr/bin/env bash

source=$1
dest=$2

#Сравнение строк. -z проверяет, не пуста ли переменная
if [[ -z "$source" || -z "$dest" ]]; then
   echo "Ошибка: нужно указать два файла"
   exit 1
fi

#Сравнение файлов. Если имена одинаковые:
if [[ "$source" == "$dest" ]]; then
   echo "Источник и приемник совпадают!"
   exit 1
else
   cp "$source" "$dest"
     if [[ $? == 0 ]]; then
     echo "Копирование завершено успешно"
   else
     echo "Копирование выполнено неудачно"
    fi
fi