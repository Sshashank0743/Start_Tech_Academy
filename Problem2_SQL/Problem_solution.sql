CREATE DATABASE IPL;

use IPL;

CREATE TABLE matches(
id	int(20),
city	text(50),
date	text(50),
player_of_match	text(100),
venue	text(200),
neutral_venue	int(30),
team1	text(100),
team2	text(100),
toss_winner	text(20),
toss_decision	text(30),
winner	text(30),
result	text(50),
result_margin	int(50),
eliminator	text(50),
method	text(100),
umpire1	text(150),
umpire2	text(150)
);

CREATE TABLE deliveries(
id	int(30),
inning	int(50),
over	int(50),
ball	int(20),
batsman	text(100),
non_striker	text(100),
bowler	text(100),
batsman_runs	int(200),
extra_runs	int(200),
total_runs	int(200),
is_wicket	int(50),
dismissal_kind	text(50),
player_dismissed	text(50),
fielder	text(100),
extras_type	text(50),
batting_team	text(200),
bowling_team	text(200)
);

SHOW FIELDS FROM matches
/* returns "Field", "Type", "Null", "Key", "Default", "Extras" */

SHOW FIELDS FROM deliveries
/* returns "Field", "Type", "Null", "Key", "Default", "Extras" */


SELECT * FROM matches;

SELECT * FROM deliveries;

SELECT * FROM deliveries limit 20;


SELECT * FROM matches limit 20;


SELECT * FROM matches
WHERE date = '02-05-2013';

SELECT * FROM matches
WHERE result_margin > 100;


SELECT * FROM matches
WHERE result = 'tie'
ORDER BY date DESC;

SELECt DISTINCT COUNT(city) FROM matches;