select 
	status,
	SUM(gp) as gp,
	ROUND(SUM(fga * fg) / SUM(fga),3) as fg,
	ROUND(SUM(fta * ft) / SUM(fta),3) as ft,
	SUM("3ptm") as "3ptm",
	SUM(pts) as pts,
	SUM(reb) as reb,
	SUM(ast) as ast,
	SUM(st) as st,
	SUM(blk) as blk,
	SUM("to") as "to"
from {{ ref( 'simple_projection_players' ) }} spp 
group by status 