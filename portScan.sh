#!/bin/bash

function ctrl_c(){
  echo -e "\n\n[!] Exiting...\n"
  tput cnorm; exit 1 #Force exit with a "Not successful" status code
}

# Ctrl+C
trap ctrl_c INT #Captures Ctrl + C and redirects the flow of the program to ctrl_c()

tput civis #Hide cursor
for port in $(seq 1 65535); do
  (echo '' > /dev/tcp/127.0.0.1/$port) 2>/dev/null && echo "[+] $port - OPEN" &
done; wait

tput cnorm #Recover cursor
