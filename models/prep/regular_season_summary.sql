SELECT [DATA_SET]
      ,[PLAYER_FULL_NAME]
      ,SUM([MIN]) AS [MIN]   
      ,SUM([FG]) AS FGM     
      ,SUM([FGA]) AS FGA
      ,SUM([_2P]) AS [2PM]     
      ,SUM([_2PA]) AS [2PA]
      ,SUM([_3P]) AS [3PM]
      ,SUM([_3PA]) AS [3PA]
      ,SUM([FT]) AS FTM     
      ,SUM([FTA]) AS FTA     
      ,SUM([OR]) AS [OR]    
      ,SUM([DR]) AS DR    
      ,SUM([TOT]) AS REB     
      ,SUM([A]) AS AST
      ,SUM([PF]) AS PF    
      ,SUM([ST]) AS STL    
      ,SUM([TO]) AS [TO]    
      ,SUM([BL]) AS BLK    
      ,SUM([PTS]) AS PTS
FROM {{ ref( 'regular_season_details' ) }}
GROUP BY [DATA_SET], [PLAYER_FULL_NAME]
HAVING SUM([MIN]) > 400