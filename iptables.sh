#Asignar IP a certificado OpenVPN
#sudo mkdir /etc/openvpn/ccd
#sudo nano Cliente4
#ifconfig-push 10.8.0.69 255.255.255.0



#Borrar todas las reglas
sudo iptables -F


#bloquea trafico de IP a Red local

#Cliente4
# sudo iptables -A FORWARD -s 10.8.0.64 -d 192.168.1.0/24 -j DROP

#Cliente3/SIA
# sudo iptables -A FORWARD -s 10.8.0.169 -d 192.168.1.0/24 -j DROP

#Anthony
sudo iptables -A FORWARD -s 10.8.0.101 -d 192.168.1.0/24 -j DROP
sudo iptables -A FORWARD -s 10.8.0.102 -d 192.168.1.0/24 -j DROP

#Lista iptables
sudo iptables -L -n -v
