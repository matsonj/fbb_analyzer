
SELECT * 
FROM {{ "'/tmp/storage/rosters/*.parquet'" if target.name == 'parquet'
    else "raw.rosters" }}