#!/usr/bin/env bash

# 1. Исходные данные
text=$1

if [[ -z "$text" ]]; then
   echo "Ошибка: нужно указать файл"
   exit 1
fi

echo "Введите с какого символа начать:"
read start                                  #С какого символа начать
echo "Введите на каком символе закончить:"
read end                                    #На каком символе закончить
echo "Выберите режим (extract / delete):"
read mode                                   #Режим: extract (выделить) или delete (удалить)

# 2. Основная часть
if [[ "$mode" == "extract" ]]; then
    result=$(cut -c "${start}-${end}" "$text") #Отрабатываем заданный диапозон -с означает посимвольный вывод
    echo "Выделено: '$result'"
else
    part_after=$(cut -c "$((end + 1))-" "$text") #В случае режима delete через разрезание текста на части и потом склеивает
    result="${part_before}${part_after}" #Сам прцесс склеивание, происходит без пробела
    echo "Удалено: '$result'"
fi