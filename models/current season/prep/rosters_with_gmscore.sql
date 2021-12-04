/* 
adding game score - calculated with the following formula
Game Score = Points Scored + (0.4 x Field Goals) – (0.7 x Field Goal Attempts) 
    – (0.4 x (Free Throw Attempts – Free Throws)) + (0.7 x Offensive Rebounds) 
    + (0.3 x Defensive Rebounds) + Steals + (0.7 x Assists) + (0.7 x Blocks) 
    – (0.4 x Personal Fouls) – Turnovers

NOTE: orebs are estimated at 25% since they are not in the current season data

*/
SELECT *,
	(pts + (0.4 * (fg * fga)) - (0.7 * fga) - (0.4 * ( fta - (ft * fta)))
    + (0.7 * .25 * reb) + (0.3 * .75 * reb) + st + (0.7 * ast) +(0.7 * blk) 
    - (0.4 * pf) - "to") as game_score
FROM {{ ref( 'current_rosters' ) }}