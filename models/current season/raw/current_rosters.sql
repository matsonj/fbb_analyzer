WITH cte_current_batch AS (
    SELECT max(_sdc_batched_at) as batch_date
    FROM {{ source( 'current_season', 'rosters' ) }}
)
SELECT * 
FROM {{ source( 'current_season', 'rosters' ) }}
JOIN cte_current_batch ON 1=1
WHERE _sdc_batched_at = batch_date