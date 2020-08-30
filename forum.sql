SELECT *
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

SELECT SUM(score)
FROM hacker_news;

SELECT user, SUM(score), COUNT(title)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200
ORDER BY SUM(score) DESC;

SELECT (517 + 309 + 304 + 282)/ 6366.0;

SELECT user, COUNT(*)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY user
ORDER BY 2 DESC;

SELECT (CASE 
  WHEN url LIKE '%github.com%' THEN 'Github'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'NY Times'
  ELSE 'other' 
  END) AS 'source',
  COUNT(*)
FROM hacker_news
GROUP BY source
ORDER BY 2 DESC;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp, strftime('%H',timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H',timestamp) AS 'Hour of the day', ROUND(AVG(score),1) AS 'Average Score', COUNT(title) AS 'Number of Stories'
FROM hacker_news
WHERE score IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;
