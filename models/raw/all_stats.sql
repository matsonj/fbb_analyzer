SELECT * FROM {{ source( 'NBADB', 'nba_stats' ) }}