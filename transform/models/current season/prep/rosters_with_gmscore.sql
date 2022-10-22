SELECT *,
	(pts + (0.4 * (fg * fga)) - (0.7 * fga) - (0.4 * ( fta - (ft * fta)))
    + (0.7 * .25 * reb) + (0.3 * .75 * reb) + st + (0.7 * ast) +(0.7 * blk) 
    - (0.4 * pf) - "to") as game_score
FROM {{ ref( 'current_rosters' ) }}