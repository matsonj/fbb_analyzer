select 
	status,
	SUM(match_gp) as gp,
	SUM(fga * fg) / SUM(fga) as fg,
	SUM(fta * ft) / SUM(fta) as ft,
	(0.95 * (SUM(fga * fg) / SUM(fga) ) ) * SUM(fg) AS wtd_fg,
	(0.95 * (SUM(fta * ft) / SUM(fta) ) ) * SUM(ft) AS wtd_ft,
	SUM("3ptm") as "3ptm",
	SUM(pts) as pts,
	SUM(reb) as reb,
	SUM(ast) as ast,
	SUM(st) as st,
	SUM(blk) as blk,
	SUM("to") as "to"
from {{ ref( 'simple_projection_players_match' ) }} spp 
group by status 