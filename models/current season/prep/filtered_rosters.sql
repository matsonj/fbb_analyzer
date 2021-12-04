SELECT rwg.*, 
       rww.wins,
       ROW_NUMBER() OVER (PARTITION BY rwg.status ORDER BY rwg.game_score Desc) AS roster_rank  
FROM {{ ref( 'rosters_with_gmscore' ) }} rwg 
JOIN {{ ref( 'interim_rosters_with_winrate' ) }} rww on rww.id = rwg.id 