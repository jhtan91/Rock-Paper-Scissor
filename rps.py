import random
#import the module to interact with the operating system
import os
#import the module that will compare text strings
import re

#check the type of operating system
#if nt(windows), then 'cls' to clear screen(CMD). Else, 'clear' to clear screen.
os.system('cls' if os.name=='nt' else 'clear')

print("\n")

print("Rock, Paper, Scissors - Shoot!")

gameScore=0     #Number of wins
nTurn=0         #Number of turns

userName = input("What's your name?")

#while(1<2)
while True:
    nTurn=nTurn+1

    while True:
    #Ask user to input R, P, or S
        userChoice = input("Choose your weapon [R]ock, [P]aper, or [S]cissors: ")

    #Check if user key in any input.
        if not re.match("[SsRrPp]",userChoice):
            print("Please choose a letter: ")
            print("[R]ock, [P]aper, or [S]cissors only.")
            continue
        break
    
    #Echo the user's choice
    print(userName + " chose: " + userChoice)

    choices = ['R','P','S']

    opponentChoice = random.choice(choices)

    print("I chose: " + opponentChoice)

    if opponentChoice == str.upper(userChoice):
        gameScore=gameScore+0
        print("It's a tie!")

    elif opponentChoice=='R' and userChoice.upper()=='S':
        gameScore=gameScore+0
        print("Rock beats Scissors, I win!")

    #continue

    elif opponentChoice=='S' and userChoice.upper()=='P':
        gameScore=gameScore+0
        print("Scissors beats paper, I win!")

    #continue

    elif opponentChoice == 'P' and userChoice.upper() == 'R':
        gameScore=gameScore+0
        print("Paper beats rock, I win!")

    #continue

    else:
        gameScore=gameScore+1
        print(userName + " win!")
        
    print("Current score is " + str(gameScore) + "/" + str(nTurn))
    cont = input("Do you want to continue? Y/N  ")
    print("\n")     #new line
    
    if not(cont=='N' or cont=='n'):
    
        continue
    
    break

print("You have won "+str(gameScore)+" times!")
print("Thank you for playing!")