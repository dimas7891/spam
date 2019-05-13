#!/bin/bash

############################################
#            Author RECT XcybeR            #
# Thanks for all member Red Eye Cyber Team #
############################################

### NO RECODE !!!

#colors
blue='\e[1;34m'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
grey="\033[0;37m"
purple="\033[0;35m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
mon="mon"
lightcyan='\e[96m'
white='\e[1;37m'
nc="\e[0m"
red='\e[1;31m'
yellow='\e[1;33m'

# Function Get
get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)

# Load
function load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
# check internet
function ci() {
  ping -c 1 google.com > /dev/null
  if [[ "$?" != 0 ]]
  then
    echo -e $lightgreen" -----------------------------------"
    echo -e $green" Checking For Internet: $red NOT CONNECT"
    echo -e $lightgreen" -----------------------------------"
    echo && sleep 0.50
     
  else
    echo -e $lightgreen" -----------------------------------"
    echo -e $green" Checking For Internet: $red CONNECTED"
    echo -e $lightgreen" -----------------------------------"
  fi
}
#BANER
function baner(){
clear
sleep 0.25
echo -e "$red"
echo " _     _ _______ __   __ ______  _______  ______ "
echo "  \___/  |         \_/   |_____] |______ |_____/ "
echo " _/   \_ |_____     |    |_____] |______ |    \_ "
echo -e "$nc"
sleep 0.25
clear
echo -e "$white"
echo " _     _ _______ __   __ ______  _______  ______ "
echo "  \___/  |         \_/   |_____] |______ |_____/ "
echo " _/   \_ |_____     |    |_____] |______ |    \_ "
echo -e "$nc"
sleep 0.25
clear
sleep 0.25
echo -e "$Fiuscha"
echo " _     _ _______ __   __ ______  _______  ______ "
echo "  \___/  |         \_/   |_____] |______ |_____/ "
echo " _/   \_ |_____     |    |_____] |______ |    \_ "
echo -e "$nc"
sleep 0.25
clear
echo -e "$blue"
echo " _     _ _______ __   __ ______  _______  ______ "
echo "  \___/  |         \_/   |_____] |______ |_____/ "
echo " _/   \_ |_____     |    |_____] |______ |    \_ "
echo -e "$nc"
sleep 0.25
clear
sleep 0.25
echo -e "$yellow"
echo " _     _ _______ __   __ ______  _______  ______ "
echo "  \___/  |         \_/   |_____] |______ |_____/ "
echo " _/   \_ |_____     |    |_____] |______ |    \_ "
echo -e "$nc"
sleep 0.25
clear
echo -e "$green"
echo " _     _ _______ __   __ ______  _______  ______ "
echo "  \___/  |         \_/   |_____] |______ |_____/ "
echo " _/   \_ |_____     |    |_____] |______ |    \_ "
echo -e "$nc"
sleep 0.25
clear
sleep 0.25
echo -e "$lightgreen"
echo " _     _ _______ __   __ ______  _______  ______ "
echo "  \___/  |         \_/   |_____] |______ |_____/ "
echo " _/   \_ |_____     |    |_____] |______ |    \_ "
echo -e "$nc"
sleep 0.25
clear
echo -e "$purple"
echo " _     _ _______ __   __ ______  _______  ______ "
echo "  \___/  |         \_/   |_____] |______ |_____/ "
echo " _/   \_ |_____     |    |_____] |______ |    \_ "
echo -e "$nc"
echo -e "$red[!]$white Gunakan Tools Dengan Bijak$nc"
echo ""
echo -e "$blue    Author By RECT XcybeR$nc"
}
ci
sleep 0.25
baner
echo ""
echo -e "$blue ~~~~~~~~~~~~~~~~~$nc"
echo -e "$white 1) Spam SMS$nc"
echo -e "$white 2) Spam Call$nc"
echo -e "$blue ~~~~~~~~~~~~~~~~~$nc"
echo -n -e "$yellow root$white@$lightgreen/XcybeR$white:$red~$cyan # $nc"
read -e lol
case $lol in
#Spam SMS
'1')
   echo ""
   echo -e "$white Masukan Nomor Yang Ingin Di spam$nc"
   read -p " [>] " target
   echo ""
   echo -e "$white Masukan Jumlah Pesan SMS$nc"
   read -p " [>] " paket
   sleep 0.3
   load
   clear 
   echo ""
   echo -e "$blue Send Message !$nc"
   echo ""
target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
     ;;
'2')
   echo ""
   echo -e "$white Masukan Nomor Yang Ingin Di spam$nc"
   read -p " [>] " target
   echo ""
   load 
   clear
echo ""
  echo -e "$blue Spam Call Is Running! $nc"
  echo ""
 cek_target=`curl -s $get_call'/call.php?nomor='$target"&method=grab"`
  sleep 0.3
      ;;
esac
