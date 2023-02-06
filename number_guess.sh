#!/bin/bash

SECRET_NUMBER=$(( ( RANDOM % 1000 ) + 1 ))
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username: "
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
if [[ -z $USER_ID ]]
then
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $USER_ID")
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

GUESS_NUMBER() {
  if [[ -z $1 ]]
  then
    echo -e "Guess the secret number between 1 and 1000:"
  else
    echo -e $1
  fi
  read GUESSED_NUMBER
}

GUESS_NUMBER

((COUNTER = 1))

while [[ SECRET_NUMBER -ne GUESSED_NUMBER ]]
do
  ((COUNTER = COUNTER + 1))
  if [[ $GUESSED_NUMBER =~ ^[0-9]+$ ]]
  then
    if [[ SECRET_NUMBER -lt GUESSED_NUMBER ]]
    then
      GUESS_NUMBER "It's lower than that, guess again:"
    else
      GUESS_NUMBER "It's higher than that, guess again:"
    fi
  else
    GUESS_NUMBER "That is not an integer, guess again:"
  fi
done

INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $COUNTER)")
echo "You guessed it in $COUNTER tries. The secret number was $SECRET_NUMBER. Nice job!"
