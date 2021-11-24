SELECT dataset
      ,player_full_name
      ,COUNT(1) AS gp
      ,SUM("min") AS "min" 
      ,SUM(fgm) AS fgm     
      ,SUM(fga) AS fga
      ,SUM("2pm") AS "2pm"   
      ,SUM("2pa") AS "2pa"
      ,SUM("3pm") AS "3pm"
      ,SUM("3pa") AS "3pa"
      ,SUM(ftm) AS ftm     
      ,SUM(fta) AS fta     
      ,SUM(oreb) AS "oreb"    
      ,SUM(dreb) AS "dreb"    
      ,SUM(totreb) AS reb     
      ,SUM(ast) AS ast
      ,SUM(pf) AS pf    
      ,SUM(stl) AS stl    
      ,SUM(tos) AS tos    
      ,SUM(blk) AS blk    
      ,SUM(pts) AS pts
FROM {{ ref( 'regular_season_details' ) }}
GROUP BY dataset, player_full_name
HAVING SUM("min") > 400