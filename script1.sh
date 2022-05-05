#!/bin/bash

echo -n "Input service: " && read service # Виведення введіть сервіс та присвоєння змінні service введення
status=$(systemctl is-active $service) # Створюємо змінну status та присвоюємо значення за допомогою команди (тобто активна чи ні)

if [ "$status" == "active" ]; then  # Порівнюємо змінну status чи вона дорівнює active
        echo "This service: ACTIVE" # Якщо так виводимо "This service: ACTIVE"
else
        systemctl start $service
        echo "$service is runing. Status ACTIVE" # Якщо ні стартуємо і показуємо, що він активний
fi;
