#!/bin/bash

user=$(whoami) # Змінні user за допомогою команди whoami присвоюємо значення(щоб зрозуміти хтоми є)

if [ "$user" == "root" ]; then # Дивимося чи змінна user це root
        # Якщо змінна user це root, то записуємо нижче наведене в script3.log
        uptime > /$user/scripts/script3.log
        who -a >> /$user/scripts/script3.log
        lastlog >> /$user/scripts/script3.log
        ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >> /$user/scripts/script3.log
        sudo netstat -tulpn | grep LISTEN >> /$user/scripts/script3.log
        free -t >> /$user/scripts/script3.log
        df >> /$user/scripts/script3.log
else
        # Якщо змінна user це не root, то записуємо нижче наведене в script2.txt, але зверніть увагу на шляхи
        uptime > /home/$user/scripts/script3.log
        who -a >> /home/$user/scripts/script3.log
        lastlog >> /home/$user/scripts/script3.log
        ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >> /home/$user/scripts/script3.log
        sudo netstat -tulpn | grep LISTEN >> /home/$user/scripts/script3.log
        free -t >> /home/$user/scripts/script3.log
        df >> /home/$user/scripts/script3.log
fi;
