SELECT batter, SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;

SELECT bowler, COUNT(player_dismissed) AS wickets
FROM deliveries
WHERE dismissal_kind IN ('bowled','caught','lbw','stumped','hit wicket')
GROUP BY bowler
ORDER BY wickets DESC
LIMIT 10;


SELECT winner, COUNT(*) AS wins
FROM matches
WHERE winner IS NOT NULL AND winner != 'NA'
GROUP BY winner
ORDER BY wins DESC;

SELECT m.venue, SUM(d.total_runs) AS total_runs
FROM deliveries d
JOIN matches m ON d.match_id = m.id
GROUP BY m.venue
ORDER BY total_runs DESC
LIMIT 10;

SELECT m.venue, AVG(t.total_score) AS avg_score
FROM (
    SELECT match_id, SUM(total_runs) AS total_score
    FROM deliveries
    GROUP BY match_id
) t
JOIN matches m ON t.match_id = m.id
GROUP BY m.venue
ORDER BY avg_score DESC;

SELECT 
    batter,
    SUM(batsman_runs) AS runs,
    COUNT(*) AS balls,
    ROUND(SUM(batsman_runs) * 100.0 / COUNT(*), 2) AS strike_rate
FROM deliveries
GROUP BY batter
HAVING balls > 500
ORDER BY strike_rate DESC
LIMIT 10;

SELECT 
    bowler,
    SUM(total_runs) AS runs_given,
    COUNT(*)/6 AS overs,
    ROUND(SUM(total_runs) / (COUNT(*)/6), 2) AS economy
FROM deliveries
GROUP BY bowler
HAVING overs > 50
ORDER BY economy ASC
LIMIT 10;

SELECT 
    batter,
    COUNT(*) AS sixes
FROM deliveries
WHERE batsman_runs = 6
GROUP BY batter
ORDER BY sixes DESC
LIMIT 10;

SELECT 
    batter,
    SUM(batsman_runs) AS runs
FROM deliveries
WHERE over_no BETWEEN 16 AND 20
GROUP BY batter
ORDER BY runs DESC
LIMIT 10;

SELECT 
    ROUND(
        SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS toss_win_match_win_percentage
FROM matches;

SELECT 
    team,
    COUNT(*) AS matches_played,
    SUM(win_flag) AS wins,
    ROUND(SUM(win_flag)*100.0 / COUNT(*),2) AS win_percentage
FROM (
    SELECT team1 AS team, CASE WHEN team1 = winner THEN 1 ELSE 0 END AS win_flag FROM matches
    UNION ALL
    SELECT team2 AS team, CASE WHEN team2 = winner THEN 1 ELSE 0 END FROM matches
) t
GROUP BY team
ORDER BY win_percentage DESC;