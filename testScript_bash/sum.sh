#!/usr/bin/env bash

echo "Введите значение a:"
read a

echo "Введите значение b:"
read b

let "summ = a + b"
echo "Сумма равна: $summ"
let "del = a / b"
echo "Значение равно: $del"
let "ost = a % b"
echo "Остаток равен: $ost"
