#!/bin/bash
sudo groupadd p1c1_2026_Todos
sudo useradd -m -s /bin/bash -g p1c1_2026_Todos -p "$(sudo grep p1c1_2026_u1 /etc/shadow | awk -F ':' '{print $2}')" p1c1_2026_u2
sudo usermod -aG p1c1_2026_Todos p1c1_2026_u1
sudo chown -R :p1c1_2026_Todos /datos
sudo chmod -R g+w /datos
sudo chmod o+r /datos
su -c "id >> /datos/validar1.txt" p1c1_2026_u2
su -c "cat /datos/validar1.txt" p1c1_2026_u1
su -c "cat /datos/validar1.txt" p1c1_2026_u2
ls -l /datos
