select id,
	player,
	team,
	"position",
	fr.status as current_team,
	sppg.status as comparison_team,
	case when fg_pg > 0 then fg / fg_pg else 0 end as fg_pct_match,
	case when ft_pg > 0 then ft / ft_pg else 0 end as ft_pct_match,
	case when "3ptm_pg" > 0 then "3ptm" / "3ptm_pg" else 0 end as "3ptm_pct_match",
	case when pts_pg > 0 then pts / pts_pg else 0 end as pts_pct_match,
	case when reb_pg > 0 then reb / reb_pg else 0 end as reb_pct_match,
	case when ast_pg > 0 then ast / ast_pg else 0 end as ast_pct_match,
	case when st_pg > 0 then st / st_pg else 0 end as st_pct_match,
	case when blk_pg > 0 then blk / blk_pg else 0 end as blk_pct_match,
	case when "to" > 0 then to_pg / "to" else 0 end as to_pct_match
from {{ ref( 'filtered_rosters' ) }} fr 
	join {{ ref( 'simple_projections_per_game_match' ) }} sppg on 1=1