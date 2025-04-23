-- SQLite
-- SELECT city_name, SUM(R.plan_revenue_crores) AS total_revenue
--     FROM dim_cities C LEFT JOIN fact_plan_revenue R 
--     ON  C.city_code = R.city_code
--     GROUP BY city_name
--     ORDER BY total_revenue DESC 
--     LIMIT 1


-- SELECT "before/after_5g", SUM(R.plan_revenue_crores) AS total_revenue
--     FROM dim_date D LEFT JOIN fact_plan_revenue R
--     ON D.date = R.date
--     GROUP BY "before/after_5g"

-- “Which company has the highest average market share in each city?”

-- WITH rank_ms AS (
--     SELECT 
--         C.city_name, 
--         MS.company, 
--         AVG(MS.ms_pct) AS avg_market_share,
--         RANK() OVER (PARTITION BY C.city_name ORDER BY AVG(MS.ms_pct) DESC) AS company_rank
--     FROM fact_market_share MS LEFT JOIN dim_cities C 
--     ON MS.city_code = C.city_code
--     GROUP BY C.city_name, MS.company

-- )
-- SELECT city_name, company, avg_market_share
-- FROM rank_ms
-- WHERE company_rank = 1;


--"After 5G, which cities had both high plan revenue and high market share for a company?"

-- WITH revenue_per_city AS (
--     SELECT C.city_name, 
--     AVG(R.plan_revenue_crores) AS avg_revenue
--     FROM fact_plan_revenue R
--     JOIN dim_cities C ON R.city_code = C.city_code
--     JOIN dim_date D ON R.date = D.date
--     WHERE D."before/after_5g" = "After 5G" 
--     GROUP BY C.city_name
-- ),

-- market_share_pc AS (
--     SELECT C.city_name,
--     MS.company,
--     AVG(MS.ms_pct) AS avg_ms
--     FROM fact_market_share MS
--     JOIN dim_cities C ON MS.city_code = C.city_code
--     JOIN dim_date D ON MS.date = D.date
--     WHERE D."before/after_5g" = "After 5G" 
--     GROUP BY C.city_name, MS.company
-- )

-- SELECT M.city_name,
-- M.company,
-- M.avg_ms,
-- R.avg_revenue
-- FROM market_share_pc M JOIN revenue_per_city R ON M.city_name = R.city_name
-- WHERE M.avg_ms > 30 AND R.avg_revenue > 3
-- ORDER BY R.avg_revenue DESC, M.avg_ms DESC;

