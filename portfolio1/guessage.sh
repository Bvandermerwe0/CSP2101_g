#!/bin/bash
     
#Student ID is: 1089192
#Author: Bianca Van Der Merwe
#last saved dates: 05/04/2020

#Have made it this way so that the user can choose the min and max age
#presenting some infromation about the guessing game
echo -e "This game is developed for you to guess the age the computer suggests you are.\nYou are required to enter the minimum and maximum age.\nWhen propmted enter in sets of 10's enter the ages.\n"              
read -p "In sets of 10's, enter the minimum age: " minage        #The minimum age the person can be
read -p "In sets of 10's enter the maximum age: " maxage            #The maximum age the person can be

randnumber=$((RANDOM % maxage + minage))                           #used to see if the number is random
while true; do

#echo $randnumber   
read -p "What age do you think you are? " userGuess         #letting the user guess the age the cript thinks they are
    if [[ $userGuess = $randnumber ]]; then                    #if the user has entered the age correctly
      echo "You guessed $randnumber, which is correct!"
      break
    elif [[ $userGuess -gt $randnumber ]]; then                #if the guess is too high
        echo -e "\nInvalid entry, it is TOO HIGH. \nPlease enter a number between $minage and $maxage.\n"
        
    elif [[ $userGuess -lt $randnumber ]]; then            #if it is too low
        echo -e  "\nInvalid entry, it is TOO LOW. \nPlease enter a number between $minage and $maxage.\n"

    else                                            #if the entry does not meet the requirements
        echo -e "\nInvalid entry. Please enter a number between $minage and $maxage."
    fi
read -p "Do you give up? (y/n): " giveupanswer          #if the user would like to give up and exit the game
    if [[ $giveupanswer = y ]]; then
    echo -e "\nThe random age was $randnumber."
    break
    else
    echo -e "\nKeep guessing! You can do it!"
    fi
 done   
