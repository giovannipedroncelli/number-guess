#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=postgres --tuples-only -c"
NUMBER=$((RANDOM%1000+1))
ATTEMPT=0
echo Enter your username:
read NAME
NAME_SEARCH=$($PSQL "SELECT username FROM games WHERE username='$NAME'")
if [[ -z $NAME_SEARCH ]]
then
echo "Welcome, $NAME! It looks like this is your first time here."
ADD=$($PSQL "INSERT INTO games VALUES('$NAME',0,0)")
else
DATI=$($PSQL "SELECT username,played,best FROM games WHERE username='$NAME'")
echo "$DATI" | while read NAME BAR PLAYED BAR BEST
    do
      echo "Welcome back, $NAME! You have played $PLAYED games, and your best game took $BEST guesses."
    done
fi
echo Guess the secret number between 1 and 1000:
read GUESS
((ATTEMPT=ATTEMPT+1))
while [[ $GUESS != $NUMBER ]]
do
if ! [[ $GUESS =~ ^[+-]?[0-9]+$ ]]
then
echo "That is not an integer, guess again:"
elif [[ $GUESS > $NUMBER ]]
then
echo "It's lower than that, guess again:"
elif [[ $GUESS < $NUMBER ]]
then
echo "It's higher than that, guess again:"
fi
read GUESS
((ATTEMPT=ATTEMPT+1))
done
UPD_TRY=$($PSQL "UPDATE games SET played = played + 1 WHERE username='$NAME'")
BEST=$($PSQL "SELECT best FROM games WHERE username='$NAME'")
if ! [[ -z $NAME_SEARCH ]]
then
if [[ $ATTEMPT < $BEST ]]
then
ADD_BEST=$($PSQL "UPDATE games SET best = $ATTEMPT WHERE username='$NAME'")
fi
else
ADD_BEST=$($PSQL "UPDATE games SET best = $ATTEMPT WHERE username='$NAME'")
fi
echo "You guessed it in $ATTEMPT tries. The secret number was $NUMBER. Nice job!"