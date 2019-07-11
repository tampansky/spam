#!/bin/sh
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
clear
install(){
    load
    echo -e "[!] MENGINSTALL CURL [!]"
    pkg install curl
    clear
}
load(){
    echo -e $red "Menghubungkan..."
    sleep 0.15
    clear
    echo -e $red "Menghubungkan..."
    sleep 0.15
    clear
    echo -e $red "Menghubungkan..."
    sleep 0.15
    clear
    echo -e $red "Menghubungkan..."
    sleep 0.15
    clear
    echo -e $red "Menghubungkan..."
    sleep 0.15
    clear
    echo -e $red "Menghubungkan..."
    sleep 0.15
    clear
}
baner(){
    load
    echo -e $red "   ____                  ______  _______"
    sleep 0.25
    echo -e $red "  / __/__  ___ ___ _    / __/  |/  / __/ "
    sleep 0.25
    echo -e $red " _\ \/ _ \/ _ '/  ' \  _\ \/ /|_/ /\ \  "
    sleep 0.25
    echo -e $red "/___/ .__/\_,_/_/_/_/ /___/_/  /_/___/  "
    sleep 0.25
    echo -e $red "   /_/                                  "
    sleep 0.25
}
install
load
baner
echo 
echo -e $red "{welcome To Tools Privat}"
echo -e $cyan "Masukkan Nomor Target Anda:"
read -p "[TARGET]:>" tar
load
echo -e $cyan "Massukkan Nomor Anda/Nama Anda"
read -p "[ANDA]:>" get
load
echo -e $cyan "Massukkan PESAN ANDA"
read -p "[PESAN]:>" nob
load
curl -X "POST" "https://rest.nexmo.com/sms/json" \
     -d "from=$get" \
     -d "text=$nob" \
     -d "to=$tar" \
     -d "api_key=a23208d1" \
     -d "api_secret=AYQ2lpxeSmQvYP3c"
