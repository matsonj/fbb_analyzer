select status,
	fg as fg_pg,
	ft as ft_pg,
	wtd_fg / gp as wtd_fg_pg,
	wtd_ft / gp as wtd_ft_pg,
	"3ptm" / gp as "3ptm_pg",
	pts / gp as pts_pg,
	reb / gp as reb_pg,
	ast / gp as ast_pg,
	st / gp as st_pg,
	blk / gp as blk_pg,
	"to" / gp as to_pg
from {{ ref( 'simple_projection_teams_match' ) }}  