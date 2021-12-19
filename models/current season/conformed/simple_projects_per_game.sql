select status,
	fg,
	ft,
	"3ptm" / gp as "3ptm_pg",
	pts / gp as pts_pg,
	reb / gp as reb_pg,
	ast / gp as ast_pg,
	st / gp as st_pg,
	blk / gp as blk_pg,
	"to" / gp as to_pg
from {{ ref( 'simple_projection_teams' ) }}  