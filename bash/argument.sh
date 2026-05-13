#!/usr/bin/env bash


# #$1, $2... - это позиционные параметры (аргументы при запуске)
# parametr1=$2
# # $0 - имя самого запущенного скрипта
# script_name=$0

# #Использование двойных кавычек позволяет подставлять переменные
# echo "Вы запусти скрипт с именем $script_name и параметром $parametr1"

# #Использование одинарных кавычек выводит текст "как есть" (без подстановки)
# echo "Здесть переменные не работают: $script_name"

# exit 0

# # echo $2

# firstNumber=$1
# secondNumber=$2
# summ = $(($1+$2))

# let "summ = $1 + $2"

# echo $summ

# echo $USER

output=$(git reflog)
echo $output