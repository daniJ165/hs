#! /bin/bash


echo " "

sleep 2

clear

rows=$(tput lines)
cols=$(tput cols)

message_height=2
start_row=$(( (rows - message_height) / 2 ))

message1="from mo - 'Hey Leland! It was a pleasure to finally meet you. Happy Sabbath! Keep taking good care of your beautiful lady for me. And as you guys say, cheers!'"

message2=" from ur lady: morningymorning & cheers mate happy sabbath !! it's so blarg i won't see you today, but i pray that GOD fills your heart with \x1b[48;5;166mpeace\x1b[0m and \x1b[48;2;194;21;43mjoy\x1b[0m today. \x1b[48;2;194;21;139mlove you!\x1b[0m"

     start_row1=${start_row} 
     start_row2=$((start_row1 + 1))

     col1=$(( (cols - ${#message1}) / 2 ))
     col2=$(( (cols - ${#message2}) / 2 ))


tput cup $start_row1 $col1
        echo -e "${message1}"

sleep 7

echo " "
sleep 1

clear

tput cup $start_row1 $col1
        echo -e "${message2}"
sleep 7
clear
