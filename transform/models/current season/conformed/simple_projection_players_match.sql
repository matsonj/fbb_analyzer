with cte_count as (
	select cast(count(*) as real) as total_players from {{ ref( 'filtered_rosters' ) }}
	)
select
	fr.id,
	fr.status,
	fr.player,
	fr.wins / c.total_players as winrate,
	fr.game_score,
	s.match_gp,
	fr.fg,
	fr.ft,
	fr."3ptm" * s.match_gp as "3ptm",
	fr.pts * s.match_gp as "pts",
	fr.reb * s.match_gp as "reb",
	fr.ast * s.match_gp as "ast",
	fr.st * s.match_gp as "st",
	fr.blk * s.match_gp as "blk",
	fr."to" * s.match_gp as "to",
	fr.fga,
	fr.fta
from {{ ref( 'filtered_rosters' ) }} fr 
join {{ ref( 'starters' ) }} s on s."rank" = fr.roster_rank
join cte_count c on 1=1
where fr.status <> 'FA'