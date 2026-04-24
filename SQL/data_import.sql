SET GLOBAL local_infile = 1;
DROP TABLE IF EXISTS deliveries;

CREATE TABLE deliveries (
    match_id INT,
    inning INT,
    batting_team TEXT,
    bowling_team TEXT,
    over_no INT,
    ball INT,
    batter TEXT,
    bowler TEXT,
    non_striker TEXT,
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    extras_type TEXT,
    is_wicket INT,
    player_dismissed TEXT,
    dismissal_kind TEXT,
    fielder TEXT
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/deliveries.csv'
INTO TABLE deliveries
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(match_id, inning, batting_team, bowling_team, @over, ball, batter, bowler, non_striker,
 batsman_runs, extra_runs, total_runs,
 extras_type, is_wicket, player_dismissed, dismissal_kind, fielder)
SET over_no = @over;

SELECT COUNT(*) FROM deliveries;
SELECT COUNT(*) FROM matches;

