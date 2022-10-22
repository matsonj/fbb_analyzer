select 
	status,
	SUM(match_gp) as gp,
	SUM(fga * fg) / SUM(fga) as fg,
	SUM(fta * ft) / SUM(fta) as ft,
	SUM("3ptm") as "3ptm",
	SUM(pts) as pts,
	SUM(reb) as reb,
	SUM(ast) as ast,
	SUM(st) as st,
	SUM(blk) as blk,
	SUM("to") as "to"
from {{ ref( 'simple_projection_players_match' ) }} spp 
group by status 