#!/bin/bash

user=$(whoami) # Змінні user за допомогою команди whoami присвоюємо значення(щоб зрозуміти хтоми є)

if [ "$user" == "root" ]; then # Дивимося чи змінна user це root
        # Якщо змінна user це root, то записуємо нижче наведене в script3.txt
        uptime > /$user/scripts/script3.txt
        who -a >> /$user/scripts/script3.txt
        lastlog >> /$user/scripts/script3.txt
        ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >> /$user/scripts/script3.txt
        sudo netstat -tulpn | grep LISTEN >> /$user/scripts/script3.txt
        free -t >> /$user/scripts/script3.txt
        df >> /$user/scripts/script3.txt
else
        # Якщо змінна user це не root, то записуємо нижче наведене в script2.txt, але зверніть увагу на шляхи
        uptime > /home/$user/scripts/script3.txt
        who -a >> /home/$user/scripts/script3.txt
        lastlog >> /home/$user/scripts/script3.txt
        ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >> /home/$user/scripts/script3.txt
        sudo netstat -tulpn | grep LISTEN >> /home/$user/scripts/script3.txt
        free -t >> /home/$user/scripts/script3.txt
        df >> /home/$user/scripts/script3.txt
fi;
