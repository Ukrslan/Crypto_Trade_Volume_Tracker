WITH first_price AS ( 
    SELECT DISTINCT
        EXTRACT(YEAR FROM timeopen) as year,
        open as first_day_price
    FROM bicoin_historical_data
    WHERE EXTRACT(MONTH FROM timeopen) = 01 AND
        EXTRACT(DAY FROM timeopen) = 01 AND 
        EXTRACT(YEAR FROM timeopen) <> 2025
),
last_price AS (
    SELECT DISTINCT
        EXTRACT(YEAR FROM timeopen) as year,
        open as last_day_price
    FROM bicoin_historical_data
    WHERE EXTRACT(MONTH FROM timeopen) = 12 AND
        EXTRACT(DAY FROM timeopen) = 31 AND 
        EXTRACT(YEAR FROM timeopen) <> 2010
)

SELECT
    first_price.year,
    first_day_price,
    last_day_price,
    ROUND(((last_day_price - first_day_price) / first_day_price) * 100, 2) AS percent_change,
    CASE WHEN first_day_price < last_day_price THEN 'Profiteble year'
    ELSE 'Unprofitable year' END as category
FROM first_price
INNER JOIN last_price ON last_price.year = first_price.year