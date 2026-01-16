#!/bin/bash


# Clear the screen
clear

# Get terminal size
rows=$(tput lines)
cols=$(tput cols)

message_height=2
start_row=$(( (rows - message_height) / 2 ))


# Function to print the messages
print_messages() {
    local message1="CHEERS MATE"
    local message2=" HAPPY SABBATH!"

    local start_row1=${start_row} 
    local start_row2=$((start_row1 + 1))

    local col1=$(( (cols - ${#message1}) / 2 ))
    local col2=$(( (cols - ${#message2}) / 2 ))

    local colors=$(( (RANDOM % 7) + 31 ))


    # Print first message
        tput cup $start_row1 $col1
        echo "${message1}"
        tput cup $start_row2 $col2
        echo "${message2}"
	tput civis
	trap "tput cnorm; clear; exit" SIGINT
}


    tput cup "$start_row" 0
    print_messages

LINES=$(tput lines)
COLUMNS=$(tput cols)

while sleep 0.003
do
	tput cup $((RANDOM%LINES)) $((RANDOM%COLUMNS))
	printf "*"
done




