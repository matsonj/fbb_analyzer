SELECT "data_set"
      ,"player_full_name"
      ,"gp"
      ,"min"
      ,"fgm"
      ,"fga"
      ,"2pm"
      ,"2pa"
      ,"3pm"
      ,"3pa"
      ,"ftm"
      ,"fta"
      ,"oreb"
      ,"dreb"
      ,"reb"
      ,"ast"
      ,"pf"
      ,"stl"
      ,"tos"
      ,"blk"
      ,"pts"
      ,"min"/"gp" AS "mpg"
      ,CASE WHEN "2pa" > 0 THEN "2pm"*1.0/"2pa" ELSE 0 END AS "2p%"
      ,CASE WHEN "3pa" > 0 THEN "3pm"*1.0/"3pa" ELSE 0 END AS "3p%"
      ,CASE WHEN "fta" > 0 THEN "ftm"*1.0/"fta" ELSE 0 END AS "ft%"
      ,CASE WHEN "fga" > 0 THEN "fgm"*1.0/"fga" ELSE 0 END  AS "fg%"
      ,"fgm" * 1.0 / "gp" * 36 / ("min"/"gp") AS "fgm/36"
      ,"fga" * 1.0 / "gp" * 36 / ("min"/"gp") AS "fga/36"
      ,"2pm" * 1.0 / "gp" * 36 / ("min"/"gp") AS "2pm/36"
      ,"2pa" * 1.0 / "gp" * 36 / ("min"/"gp") AS "2pa/36"
      ,"3pm" * 1.0 / "gp" * 36 / ("min"/"gp") AS "3pm/36"
      ,"3pa" * 1.0 / "gp" * 36 / ("min"/"gp") AS "3pa/36"
      ,"ftm" * 1.0 / "gp" * 36 / ("min"/"gp") AS "ftm/36"
      ,"fta" * 1.0 / "gp" * 36 / ("min"/"gp") AS "fta/36"
      ,"oreb" * 1.0 / "gp" * 36 / ("min"/"gp") AS "oreb/36"
      ,"dreb" * 1.0 / "gp" * 36 / ("min"/"gp") AS "dreb/36"
      ,"reb" * 1.0 / "gp" * 36 / ("min"/"gp") AS "reb/36"
      ,"ast" * 1.0 / "gp" * 36 / ("min"/"gp") AS "ast/36"
      ,"pf" * 1.0 / "gp" * 36 / ("min"/"gp") AS "pf/36"
      ,"stl" * 1.0 / "gp" * 36 / ("min"/"gp") AS "stl/36"
      ,"tos" * 1.0 / "gp" * 36 / ("min"/"gp") AS "tos/36"
      ,"blk" * 1.0 / "gp" * 36 / ("min"/"gp") AS "blk/36"
      ,"pts" * 1.0 / "gp" * 36 / ("min"/"gp") AS "pts/36"
FROM {{ ref( 'regular_season_summary' ) }}