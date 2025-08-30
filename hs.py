#! /usr/bin/env python3

import random

def happy_sabbath():
    hs_options = [ "cheers mate happy sabbath !!", "happy sabbath goose !", "dnalel htabbas yppah", "*", "HaPpY SaBbAtH" ]
    random_choice = random.choice(hs_options)
    print(random_choice)
    
    if random_choice == "*":
        answer = input("lol u got the star! what time is it rn? (format: military time without minutes, e.g. 1800): ")

        if answer in ("0700", "0800", "0900", "1000", "1100", "1200", "1300", "1400", "1500", "1600", "1700", "1800", "1900", "2000"):
            print("cheers. happy sabbath")
        elif answer in ("0400", "0500", "0600"):
            print("yoo ur up early! morningymorning & happy sabbath!")
        else:
            print("bruh it's late. go to bed. happy sabbath & nightynight")

        

    

happy_sabbath()
