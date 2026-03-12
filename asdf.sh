#!/usr/bin/env bash

# Clear the screen
clear


# Function to print the messages
print_messages() {
    local message=" 
 #                                 
 # mm    mmm   mmmm   mmmm   m   m 
 #.  #  .   #  #. .#  #. .#  .m m. 
 #   #  m...#  #   #  #   #   #m#  
 #   #  .mm.#  ##m#.  ##m#.   .#   
               #      #       m.   
               .      .      ..    


               #      #               m    #     
  mmm    mmm   #mmm   #mmm    mmm   mm#mm  # mm  
 #   .  .   #  #. .#  #. .#  .   #    #    #.  # 
  ...m  m...#  #   #  #   #  m...#    #    #   # 
 .mmm.  .mm.#  ##m#.  ##m#.  .mm.#    .mm  #   # 


                 m          
 mmmmm   mmm   mm#mm   mmm  
 # # #  .   #    #    #.  # 
 # # #  m...#    #    #.... 
 # # #  .mm.#    .mm  .#mm.
                                                 

 "

    local colors=$(( (RANDOM % 7) + 31 ))

    row=$(( (RANDOM % 10) + 1 ))
    column=$(( (RANDOM % 10) + 1 ))


    # Print message
    for ((i=0; i<=${#message}; i++)); do
        tput cup "$row" "$column"

        echo -e "\e[1;${colors}m${message:0:i}\e[0m"
        sleep 0.001
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







