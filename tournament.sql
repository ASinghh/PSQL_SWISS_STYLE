-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


create table Names (
    Name text,
    Player_id serial primary key
    );

create table Games (
    Match_id serial primary key,
    winner_id integer references Names (Player_id),
    looser_id integer references Names (Player_id)

    );
create view v1 as select names.player_id, names.name, count(games.
    winner_id) as num_win from names
    left join games on names.player_id = games.winner_id group by names.player_id;


create view v2 as select names.player_id, count(games.looser_id) a
    s num_loss from names
    left join games on names.player_id = games.looser_id group by names.player_id;

create view v3 as select v1.player_id,v1.name, v1.num_win,v2.num_loss,
    v1.num_win + v2.num_loss as total_num from v1 left join v2 on v1.player_id
    = v2.player_id  order by v1.num_win desc;




