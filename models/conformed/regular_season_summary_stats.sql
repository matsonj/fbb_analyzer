SELECT [DATA_SET]
      ,[PLAYER_FULL_NAME]
      ,[GP]
      ,[MIN]
      ,[FGM]
      ,[FGA]
      ,[2PM]
      ,[2PA]
      ,[3PM]
      ,[3PA]
      ,[FTM]
      ,[FTA]
      ,[OR]
      ,[DR]
      ,[REB]
      ,[AST]
      ,[PF]
      ,[STL]
      ,[TO]
      ,[BLK]
      ,[PTS]
      ,[MPG] = [MIN]/[GP]
      ,[2P%] = CASE WHEN [2PA] > 0 THEN [2PM]*1.0/[2PA] ELSE 0 END 
      ,[3P%] = CASE WHEN [3PA] > 0 THEN [3PM]*1.0/[3PA] ELSE 0 END 
      ,[FT%] = CASE WHEN [FTA] > 0 THEN [FTM]*1.0/[FTA] ELSE 0 END 
      ,[FG%] = CASE WHEN [FGA] > 0 THEN [FGM]*1.0/[FGA] ELSE 0 END 
      ,[FGM/36] = [FGM] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[FGA/36] = [FGA] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[2PM/36] = [2PM] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[2PA/36] = [2PA] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[3PM/36] = [3PM] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[3PA/36] = [3PA] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[FTM/36] = [FTM] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[FTA/36] = [FTA] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[OR/36]  = [OR] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[DR/36]  = [DR] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[REB/36] = [REB] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[AST/36] = [AST] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[PF/36]  = [PF] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[STL/36] = [STL] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[TO/36]  = [TO] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[BLK/36] = [BLK] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
      ,[PTS/36] = [PTS] * 1.0 / [GP] * 36 / ([MIN]/[GP]) 
FROM {{ ref( 'regular_season_summary' ) }}