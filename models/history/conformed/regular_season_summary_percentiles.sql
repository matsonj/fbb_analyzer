SELECT dataset
       ,player_full_name
       ,PERCENT_RANK() OVER (ORDER BY "mpg") AS "percentile_mpg"
       ,PERCENT_RANK() OVER (ORDER BY "2p%") AS "percentile_2p%"
       ,PERCENT_RANK() OVER (ORDER BY "3p%") AS "percentile_3p%"
       ,PERCENT_RANK() OVER (ORDER BY "ft%") AS "percentile_ft%"
       ,PERCENT_RANK() OVER (ORDER BY "fg%") AS "percentile_fg%"
       ,PERCENT_RANK() OVER (ORDER BY "fgm/36") AS "percentile_fgm/36"
       ,PERCENT_RANK() OVER (ORDER BY "fga/36") AS "percentile_fga/36"
       ,PERCENT_RANK() OVER (ORDER BY "2pm/36") AS "percentile_2pm/36"
       ,PERCENT_RANK() OVER (ORDER BY "2pa/36") AS "percentile_2pa/36"
       ,PERCENT_RANK() OVER (ORDER BY "3pm/36") AS "percentile_3pm/36"
       ,PERCENT_RANK() OVER (ORDER BY "3pa/36") AS "percentile_3pa/36"
       ,PERCENT_RANK() OVER (ORDER BY "ftm/36") AS "percentile_ftm/36"
       ,PERCENT_RANK() OVER (ORDER BY "fta/36") AS "percentile_fta/36"
       ,PERCENT_RANK() OVER (ORDER BY "oreb/36") AS "percentile_oreb/36"
       ,PERCENT_RANK() OVER (ORDER BY "dreb/36") AS "percentile_dreb/36"
       ,PERCENT_RANK() OVER (ORDER BY "reb/36") AS "percentile_reb/36"
       ,PERCENT_RANK() OVER (ORDER BY "ast/36") AS "percentile_ast/36"
       ,PERCENT_RANK() OVER (ORDER BY "pf/36") AS "percentile_pf/36"
       ,PERCENT_RANK() OVER (ORDER BY "stl/36") AS "percentile_stl/36"
       ,PERCENT_RANK() OVER (ORDER BY "tos/36" DESC) AS "percentile_tos/36"
       ,PERCENT_RANK() OVER (ORDER BY "blk/36") AS "percentile_blk/36"
       ,PERCENT_RANK() OVER (ORDER BY "pts/36") AS "percentile_pts/36"
  FROM {{ ref( 'regular_season_summary_stats' ) }}