#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
clear

TRUNCATE=$($PSQL "TRUNCATE table teams, games")

echo -e "\nFilling data from games.csv\n"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
    then

      # insert teams
      TEAMW=$($PSQL "INSERT INTO teams (name) VALUES('$WINNER')")
      if [[ $TEAMW == "INSERT 0 1" ]]
        then
          echo "Inserted $WINNER into teams"
      fi

      TEAMO=$($PSQL "INSERT INTO teams (name) VALUES('$OPPONENT')")
      if [[ $TEAMO == "INSERT 0 1" ]]
        then
          echo "Inserted $OPPONENT into teams"
      fi

      # get team IDs
      TEAMW_ID=$($PSQL "SELECT team_id FROM teams WHERE name ='$WINNER'")
      TEAMO_ID=$($PSQL "SELECT team_id FROM teams WHERE name ='$OPPONENT'")

      # insert games
      GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values($YEAR, '$ROUND', $TEAMW_ID, $TEAMO_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi
done
