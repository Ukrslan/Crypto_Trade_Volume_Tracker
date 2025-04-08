-- CTE to get the opening price on January 1st for each year (excluding 2025)
WITH first_price AS ( 
    SELECT DISTINCT
        EXTRACT(YEAR FROM timeopen) AS year,          
        open AS first_day_price                       
    FROM bicoin_historical_data
    WHERE EXTRACT(MONTH FROM timeopen) = 1            
      AND EXTRACT(DAY FROM timeopen) = 1              
      AND EXTRACT(YEAR FROM timeopen) <> 2025         
),

-- CTE to get the opening price on December 31st for each year (excluding 2010)
last_price AS (
    SELECT DISTINCT
        EXTRACT(YEAR FROM timeopen) AS year,          
        open AS last_day_price                        
    FROM bicoin_historical_data
    WHERE EXTRACT(MONTH FROM timeopen) = 12           
      AND EXTRACT(DAY FROM timeopen) = 31             
      AND EXTRACT(YEAR FROM timeopen) <> 2010         
)

-- Final selection combining the first and last day prices
SELECT
    fp.year,
    fp.first_day_price,
    lp.last_day_price,

    -- Calculate % change from Jan 1 to Dec 31
    ROUND(((lp.last_day_price - fp.first_day_price) / fp.first_day_price) * 100, 2) AS percent_change,

    -- Label each year as profitable or unprofitable
    CASE 
        WHEN fp.first_day_price < lp.last_day_price THEN 'Profiteble year'
        ELSE 'Unprofitable year' 
    END AS category

FROM first_price fp
INNER JOIN last_price lp ON lp.year = fp.year      -- Join on year to match price pairs
