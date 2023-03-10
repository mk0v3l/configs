#!/bin/sh
sudo apt -y update
sudo apt -y upgrade

sudo nmcli dev wifi connect "Proximus-Home-C098" password "wpzpc7anzwmzc"
sudo systemctl edit usb_interface_p.service --full --force
systemctl enable usb_interface_p.service

sudo apt install ubuntu-mate-desktop
#sudo apt install -y xfce4
#sudo apt install kde-plasma-desktop

sudo apt install tightvncserver

sudo vim ~/.vnc/xstartup
sudo vim /etc/systemd/system/vncserver@.service
sudo systemctl daemon-reload 
sudo systemctl enable vncserver@1.service 
sudo systemctl start vncserver@1

sudo apt install -y libfltk1.3-dev
sudo apt install -y g++-10

sudo shutdown now
