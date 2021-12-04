WITH cte_max_win_rate AS (
    SELECT MAX(wins) * 0.75 as "max_wins"
    FROM jm_prep.rosters_with_winrate
)
SELECT rwg.*, rww.wins 
FROM {{ ref( 'rosters_with_gmscore' ) }} rwg 
JOIN cte_max_win_rate mwr ON 1=1
JOIN {{ ref( 'rosters_with_winrate' ) }} rww on rww.id = rwg.id 
WHERE rww.wins > mwr.max_wins OR rwg.status <> 'FA'