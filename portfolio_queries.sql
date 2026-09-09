-- Portfolio Performance Analysis: SQL Summary Queries
-- Data: daily returns for AAPL, JPM, JNJ, XOM, PG, NVDA, SPY (2021-2026)

SELECT
*
FROM
daily_returns


;

-- 1.  Avg daily return per ticker

SELECT
	ROUND((AVG(AAPL)),5) AS avg_aapl,
	ROUND((AVG(JNJ)),5) AS avg_jnj,
	ROUND((AVG(JPM)),5) AS avg_jpm,
	ROUND((AVG(NVDA)),5) AS avg_nvda,
	ROUND((AVG(PG)),5) AS avg_pg,
	ROUND((AVG(SPY)),5)  AS avg_spy,
	ROUND((AVG(XOM)),5) AS avg_xom

FROM
daily_returns

;

-- 2. Best/worst day for single ticker (NVDA)

SELECT *

FROM 
	(SELECT  'Best Day' AS LABEL, date, ROUND(NVDA,5) AS NVDA
		FROM daily_returns
		ORDER BY NVDA DESC
		LIMIT 1)
						
UNION ALL

SELECT *

FROM 
	(SELECT  'Worst Day' AS LABEL, date, ROUND(NVDA,5) AS NVDA
		FROM daily_returns
		ORDER BY NVDA ASC
		LIMIT 1)

;

-- 3. Count positive and negative returns (SPY)

SELECT
'Positive Returns' AS LABEL, COUNT(SPY) AS SPY

FROM
daily_returns

WHERE
SPY > 0

UNION ALL

SELECT
'Negative Returns' AS LABEL, COUNT(SPY) AS SPY

FROM
daily_returns

WHERE
SPY <0

;

-- 4. Count total trading days | earliest and latest dates

SELECT
COUNT(date) AS 'Total Trading Days', MIN(date) AS 'Earliest Date', MAX(date) AS 'Latest Date'

FROM
daily_returns

;

-- 5. Count of days NVDA's return exceeded its average

SELECT
COUNT(NVDA) AS 'NVDA Above Average Days'

FROM
daily_returns

WHERE
NVDA > (SELECT  AVG(NVDA) FROM daily_returns)
;









