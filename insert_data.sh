#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams;")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
  if [[ $WINNER != "winner" ]]
    then
      W_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
      #NEW WINNER 
      if [[ -z $W_NAME ]]
        then
          W_NAME_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
            if [[ $W_NAME_RESULT == "INSERT 0 1" ]] 
              then
                W_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
            fi
      #EXISTING WINNER        
      else       
          W_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      fi
  fi

  if [[ $OPPONENT != "opponent" ]]
    then
      O_NAME=$($PSQL " SELECT name FROM teams WHERE name='$OPPONENT'")
      #NEW OPPONENT
      if [[ -z $O_NAME ]]
        then
          O_NAME_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")   
          if [[ $O_NAME_RESULT == "INSERT 0 1" ]]
            then
              O_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
          fi
      #EXISTING OPPONENT
      else
        O_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      fi
  fi

  if [[ $W_ID != $O_ID ]]
    then
      GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES('$YEAR','$ROUND','$W_ID','$O_ID','$WINNER_GOALS','$OPPONENT_GOALS')")
      if [[ $GAMES == "INSERT 0 1" ]]
        then
          echo $WINNER VS. $OPPONENT :$YEAR :$ROUND ADDED TO GAMES TABLE.
      fi
  fi

done


  