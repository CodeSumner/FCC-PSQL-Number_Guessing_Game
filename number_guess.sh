#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

RETURING_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

if [[ -z $RETURING_USER ]]

  then
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
    
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"

fi

echo "Guess the secret number between 1 and 1000:"

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

NUMBER_OF_GUESSES=1
GUESS=0

GUESSING_GAME() {

  read GUESS

  if [[ $GUESS =~ ^[0-9]+$ ]]
  then

    while [[ ! $GUESS -eq $SECRET_NUMBER ]]
    do

    NUMBER_OF_GUESSES=$(expr $NUMBER_OF_GUESSES + 1)

    if [[ $GUESS -lt $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      read GUESS

    elif [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      read GUESS
      fi  
    done
  fi

	if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GUESSING_GAME
  fi
}

GUESSING_GAME



INSERT_GAME__RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"





