#!/bin/bash
useradd -m steam #add steam user 
cd /home/steam
sudo apt install steamcmd #install steam cmd from packadge dist (ubuntu/deb)
 sudo add-apt-repository multiverse
 sudo dpkg --add-architecture i386
 sudo apt update
 sudo apt install lib32gcc1 steamcmd 
 
cd ~ #navigate to home user directory 
mdkir rust #create rust dir 

echo  "
#!/bin/sh
clear while : do
exec ./RustDedicated -batchmode -nographics \
-server.ip IPAddressHere \
-server.port 28015 \
-rcon.ip IPAddressHere \
-rcon.port 28016 \
-rcon.password "rcon password here" \
-server.maxplayers 75 \
-server.hostname "My Custom Server Name" \
-server.identity "my_server_identity" \
-server.level "Procedural Map" \
-server.seed 12345 \
-server.worldsize 3000 \
-server.saveinterval 300 \-server.globalchat true \
-server.description "Description Here" \
-server.headerimage "512x256px JPG/PNG headerimage link here" \
-server.url "Your Website Here"
echo "\nRestarting server...\n" done
" 
 >  StartRust.sh 
chmod u+x StartRust.sh

#(ports 28015 and 28016)


#this script is not fully tested atm 
