#!/bin/bash
clear
slowdns () {
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%40s%s%-12s\n' "MENU SLOWDNS MANAGER" ; tput sgr0
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
echo -e "\033[0;36m#===================================================#\033[m"
echo -e "\033[0;36m# .|'''.|'||                '||''|. '|.   '|'.|'''.|#\033[m"
echo -e "\033[0;36m# ||..  ' ||  ... ... ... ...||   || |'|   | ||..  '#\033[m"
echo -e "\033[0;36m#  ''|||. ||.|  '|.||  ||  | ||    ||| '|. |  ''|||.#\033[m"
echo -e "\033[0;36m#.     '||||||   || ||| |||  ||    |||   |||.     '|#\033[m"
echo -e "\033[0;36m#|'....|'.||.'|..|'  |   |  .||...|'.|.   '||'....|'#\033[m"
echo -e "\033[0;36m#===================================================#\033[m"
    echo ""
    echo -e "\033[0;36m[1]\033[m | Install SlowDNS SSH"
    echo -e "\033[0;36m[2]\033[m | Install SlowDNS SSL"
    echo -e "\033[0;36m[3]\033[m | Install SlowDNS DROP"
    echo -e "\033[0;36m[4]\033[m | Install SlowDNS SOCKS"
    echo -e "\033[0;36m[5]\033[m | View information"
    echo -e "\033[0;36m[6]\033[m | Start SlowDNS"
    echo -e "\033[0;36m[7]\033[m | Restart SlowDNS"
    echo -e "\033[0;36m[8]\033[m | Stop SlowDNS"
    echo -e "\033[0;36m[9]\033[m | Delete SlowDNS"
    echo -e "\033[0;36m[10]\033[m | Update/Reinstall"
    echo -e "\033[0;36m[11]\033[m | Delete Script Permanent"
    echo -e "\033[0;36m[0]\033[m | Exit"
    echo ""
    echo -ne "\033[0;36mO What do you want to do?:\0033[m " && read opcao
    case $opcao in
    1) Opcao1 ;;
    2) Opcao2 ;;
    3) Opcao3 ;;
    4) Opcao4 ;;
    5) Opcao5 ;;
    6) Opcao6 ;;
    7) Opcao7 ;;
    8) Opcao8 ;;
    9) Opcao9 ;;
    10) Opcao10 ;;
    11) Opcao11 ;;
    0) Sair ;;
    *) "Calma Barboleta" ; echo ; slowdns ;;
    esac
    }

Opcao1 () {
    clear
    bash /etc/SLDNS/slowdns-ssh
}

Opcao2 () {
    clear
    bash /etc/SLDNS/slowdns-ssl
}

Opcao3 () {
    clear
    bash /etc/SLDNS/slowdns-drop
}

Opcao4 () {
    clear
    bash /etc/SLDNS/slowdns-socks
}


Opcao5 () {
    clear
    bash /etc/SLDNS/slowdns-info
}

Opcao6 () {
    clear
    bash /etc/SLDNS/startdns
}

Opcao7 () {
    clear
    bash /etc/SLDNS/restartdns
}

Opcao8 () {
    clear
    bash /etc/SLDNS/stopdns
}

Opcao9 () {
     clear
    bash /etc/SLDNS/stopdns
    bash /etc/SLDNS/remove-slow
}

Opcao10 () {
    clear
    wget https://raw.githubusercontent.com/buble-max/autoset/SLDNS/master/update/slowdnsmenu.sh
    chmod +x slowdnsmenu.sh
    bash slowdnsmenu.sh
}

Opcao11 () {
     clear
    bash /etc/SLDNS/remove-slow
    echo -e "\033[0;31mSlowDNS Manager Uninstalled!\033[0m"
    sleep 2
    rm /bin/SLDNS
}

Sair() {
    clear
    exit
}
clear
slowdns
