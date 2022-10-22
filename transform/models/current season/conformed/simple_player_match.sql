SELECT id, 
    player, 
    team, 
    "position", 
    current_team, 
    comparison_team,
    fg_pct_match, 
    ft_pct_match, 
    "3ptm_pct_match", 
    pts_pct_match, 
    reb_pct_match, 
    ast_pct_match, 
    st_pct_match, 
    blk_pct_match, 
    to_pct_match, /*
    sqrt( (case when fg_pct_match > 1 then 1 else fg_pct_match^2 end
        + case when ft_pct_match > 1 then 1 else ft_pct_match^2 end
        + case when "3ptm_pct_match" > 1 then 1 else "3ptm_pct_match"^2 end
        + case when pts_pct_match > 1 then 1 else pts_pct_match^2 end
        + case when reb_pct_match > 1 then 1 else reb_pct_match^2 end
        + case when ast_pct_match > 1 then 1 else ast_pct_match^2 end
        + case when st_pct_match > 1 then 1 else st_pct_match^2 end
        + case when blk_pct_match > 1 then 1 else blk_pct_match^2 end
        + case when to_pct_match > 1 then 1 else to_pct_match^2 end)
    /9 ) as match_percent, */
        sqrt( ( case when "3ptm_pct_match" > 1 then 1 else "3ptm_pct_match"^2 end
        + case when pts_pct_match > 1 then 1 else pts_pct_match^2 end
        + case when reb_pct_match > 1 then 1 else reb_pct_match^2 end
        + case when ast_pct_match > 1 then 1 else ast_pct_match^2 end
        + case when st_pct_match > 1 then 1 else st_pct_match^2 end
        + case when blk_pct_match > 1 then 1 else blk_pct_match^2 end
        + case when to_pct_match > 1 then 1 else to_pct_match^2 end)
    /7 ) as match_percent
FROM {{ ref( 'interim_player_match' ) }}
--where comparison_team = 'BEAL' and current_team = 'JR'
--order by match_percent desc;