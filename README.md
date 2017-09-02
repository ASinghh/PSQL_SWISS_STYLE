# PSQL_SWISS_STYLE
Database schema and manipulation functions written in PSQL and Python  respectively.

In the above sql file, I have tried to write a database schema for a swiss style tournament. In this style, instead of elimination, 
the person with the maximum points wins the game. Pairs are made between players with equal or similar points.

For more information on swiss style tournament, please follow the link
https://en.wikipedia.org/wiki/Swiss-system_tournament

I have done this project as a part of a course on Relational Database which was taught using PostgreSQL.

During the time of my work I had the following thought process:

1. I wanted to design an efficient Schema that requires minimum space.
2. To achieve this I made two tables, the 1st one(Names) had information about the players, unique id was the player_id
3. The second table(games) has a  game Id( which is also the unique ID), winner_id(referenced to the player_id of Names table) and a looser_ID
   (also referenced to the player_id).
4. The above schema covers all possible information about a swiss style tournament.
5. Due to the compact nature of the database, recombining the tables has become a little computationally expensive. I had created a VIEW to 
   recombine the tables. I am working on the view so as to make it less computationally expensive.
   
I have also written some python functions to do the basic functions such as adding, removing players, creating pairs etc



Download the file and run in a PostgreSQL to play arround .


