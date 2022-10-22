{{ config( materialized = "table" ) }}
select cr.id,
	SUM( 
		cast( 
			cast((cr.fg > cr2.fg) as int) + cast((cr.ft > cr2.ft) as int) + cast((cr."3ptm" > cr2."3ptm") as int)
			+ cast((cr.pts > cr2.pts) as int) + cast((cr.reb > cr2.reb) as int) + cast((cr.ast > cr2.ast) as int)
			+ cast((cr.st > cr2.st) as int) + cast((cr.blk > cr2.blk) as int) + cast((cr."to" < cr2."to") as int)
				+ (
				cast((cr.fg = cr2.fg) as int) + cast((cr.ft = cr2.ft) as int) + cast((cr."3ptm" = cr2."3ptm") as int)
				+ cast((cr.pts = cr2.pts) as int) + cast((cr.reb = cr2.reb) as int) + cast((cr.ast = cr2.ast) as int)
				+ cast((cr.st = cr2.st) as int) + cast((cr.blk = cr2.blk) as int) + cast((cr."to" = cr2."to") as int)
			) * 0.5 > 4.5 as int)
		) as "wins"
from {{ ref( 'interim_rosters' ) }} cr 
join {{ ref( 'interim_rosters' ) }} cr2 on 1=1
group by cr.id