# bin/bash!
# https://github.com/MrHacker-X/CloneWeb.git/
clear
#ctrl_c traping
trap ctrl_c INT
ctrl_c() {
echo -e "\n\033[1;91m[\033[1;97m#\033[1;91m] Exiting....."
sleep 0.5
exit
}

# script start
echo -e " \033[1;92m  ___ _               \033[1;97m   __    __     _           
\033[1;92m  / __\ | ___  _ __   ___\033[1;97m/ / /\ \ \___| |__      
\033[1;92m / /  | |/ _ \| '_ \ / _\033[1;97m \ \/  \/ / _ \ '_ \ 
\033[1;92m/ /___| | (_) | | | |  __/\033[1;97m\  /\  /  __/ |_) |
\033[1;92m\____/|_|\___/|_| |_|\___|\033[1;97m \/  \/ \___|_.__/ \033[1;92mv.1.0
      ..::|\033[1;97mCreate\033[1;92md by: MrHacker-\033[1;97mX\033[1;92m|::..

\033[1;92m[\033[1;97m#\033[1;92m] \033[1;93mChoose here any option
\033[1;92m|
\033[1;92m[\033[1;97m1\033[1;92m] Clone complete site
\033[1;92m[\033[1;97m2\033[1;92m] Clone\033[1;97m html\033[1;92m code only
\033[1;92m[\033[1;97m3\033[1;92m] See site's\033[1;97m html \033[1;92mcode
\033[1;92m[\033[1;97m0\033[1;92m] Exit
\033[1;92m"
read -p "[#] Option: " mrx #user input
# 1
if [ $mrx = 1 ]
then
echo -e '\033[1;92m'
read -p "[#] Site domain or link: " site
wget -r $site
echo
echo -e '\033[1;94m'
read -p "Press Enter To The Back" enter
clone
fi
#2
if [ $mrx = 2 ]
then
echo -e '\033[1;92m'
read -p "[#] Site domain or link: " sit
wget $sit
echo
echo -e '\033[1;94m'
read -p "Press Enter To The Back" enter
clone
fi
#3
if [ $mrx = 3 ]
then
echo -e '\033[1;92m'
read -p "[#] Site domain or link: " sitee
curl $sitee
echo
echo -e '\033[1;94m'
read -p "Press Enter To The Back" enter
clone
fi
#0
if [ $mrx = 0 ]
then
echo -e "\033[1;91m[\033[1;97m#\033[1;91m] Exiting....."
sleep 0.5
exit
else
echo
echo -e "\033[1;91m[!] Invalid input"
sleep 1.0
clone
fi
