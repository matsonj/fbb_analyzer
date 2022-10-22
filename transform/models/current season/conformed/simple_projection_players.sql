with cte_count as (
	select cast(count(*) as real) as total_players from {{ ref( 'filtered_rosters' ) }}
	)
select
	fr.id,
	fr.status,
	fr.player,
	fr.wins / c.total_players as winrate,
	fr.game_score,
	s.gp,
	fr.fg,
	fr.ft,
	fr."3ptm" * s.gp as "3ptm",
	fr.pts * s.gp as "pts",
	fr.reb * s.gp as "reb",
	fr.ast * s.gp as "ast",
	fr.st * s.gp as "st",
	fr.blk * s.gp as "blk",
	fr."to" * s.gp as "to",
	fr.fga,
	fr.fta
from {{ ref( 'filtered_rosters' ) }} fr 
join {{ ref( 'starters' ) }} s on s."rank" = fr.roster_rank
join cte_count c on 1=1
where fr.status <> 'FA'