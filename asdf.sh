#!/usr/bin/env bash

# Clear the screen
clear


# Function to print the messages
print_messages() {
    local message1="CHEERS MATE"
    local message2=" HAPPY SABBATH!"

    local colors=$(( (RANDOM % 7) + 31 ))

    row=$(( (RANDOM % 10) + 1 ))
    column=$(( (RANDOM % 10) + 1 ))

    # Print first message
    for ((i=0; i<=${#message1}; i++)); do
        tput cup "$row" "$column"

        echo -e "\e[1;${colors}m${message1:0:i}\e[0m"
        sleep 0.1
    done

    # Print second message
    for ((i=0; i<=${#message2}; i++)); do
        tput cup "$row" "$column"

        echo -e "\e[1;${colors}m${message2:0:i}\e[0m"
        sleep 0.1
    done
}

row=$(( (RANDOM % 100) + 1 ))
column=$(( (RANDOM % 100) + 1 ))

while true; do
    #tput cup "$row" "$column"
    print_messages
    sleep 1
    clear
done







