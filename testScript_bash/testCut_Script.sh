#!/usr/bin/env bash

text=$1

#Проверка не пустое ли значение
if [[ -z "$text" && -s "$text" ]]; then             #Проверяю пустая ли переменная и пустой ли файл
   echo "Ошибка: нужно указать файл или он пустой"
   exit 1
 else
   cut -c 7-11 "$text"
fi

    # # Защита от start=1, чтобы не получился диапазон 1-0)
    # if (( start > 1 )); then
    #     part_before=$(cut -c "1-$((start - 1))" "$text")
    # else
    #     part_before=""
    # fi