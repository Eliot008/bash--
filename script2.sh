#!/bin/bash

user=$(whoami) # Зміна user за допомогою команди whoami присвоюємо значення(щоб зрозуміти хтоми є)

if [ "$user" == "root" ]; then # Дивимося чи змінна user це root 
        # Якщо змінна user це root, то записуємо нижче наведене в script2.txt
        uname -a > /$user/scripts/script2.txt
        ifconfig >> /$user/scripts/script2.txt 
        ip addr >> /$user/scripts/script2.txt
        cat /etc/default/ufw >> /$user/scripts/script2.txt
        cat /etc/resolv.conf >> /$user/scripts/script2.txt
        cat /etc/sysctl.conf >> /$user/scripts/script2.txt
        modprobe -c >> /$user/scripts/script2.txt
else
        # Якщо змінна user це не root, то записуємо нижче наведене в script2.txt, але зверніть увагу на шляхи
        uname -a > /home/$user/scripts/script2.txt
        ifconfig >> /home/$user/scripts/script2.txt 
        ip addr >> /home/$user/scripts/script2.txt
        cat /etc/default/ufw >> /home/$user/scripts/script2.txt
        cat /etc/resolv.conf >> /home/$user/scripts/script2.txt
        cat /etc/sysctl.conf >> /home/$user/scripts/script2.txt
        modprobe -c >> /home/$user/scripts/script2.txt
fi;
