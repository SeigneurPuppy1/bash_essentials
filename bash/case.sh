#!/usr/bin/env bash

echo "Выберите действие (1-3):"
read choice

case $choice in
    1)
        echo "Запуск обновления.."
        ;;
    2)
        echo "Создание бэкапа.."
        ;;
    3|exit)
        echo "Выход."
        exit 0
        ;;
    *)
        echo "Некорректный ввод."
        ;;
esac
        