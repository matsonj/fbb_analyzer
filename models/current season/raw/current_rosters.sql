SELECT * 
FROM {{ source( 'current_season', 'rosters' ) }}

--contemplated splitting rosters here but need to enrich all players with data first
--WHERE STATUS <> 'FA'