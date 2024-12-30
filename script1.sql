SELECT * FROM us_senate_analysis.dataset_with_topics;

SELECT 
     us.name,                               -- Name of the senator
-- 	YEAR(CURDATE()) - YEAR(us.born) AS age, -- Calculate age based on birth year
     AVG(dw.retweets) AS avg_retweets,      -- Average number of retweets
     AVG(dw.likes) AS avg_likes             -- Average number of likes
FROM 
    us_senators us
JOIN dataset_with_topics dw ON us.id = dw.id -- Match senator data with social media data
GROUP BY us.name        --  age                           -- Group by senator name and age
-- ORDER BY 
--     avg_likes DESC;  