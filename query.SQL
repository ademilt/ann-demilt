SELECT url_host_name, count(*) as n, arbitrary(url_path) as sample_path
FROM "ccindex"."ccindex"
WHERE (crawl = 'CC-MAIN-2020-05' OR crawl ='CC-MAIN-2020-10' OR crawl ='CC-MAIN-2020-16' OR crawl ='CC-MAIN-2020-24' OR crawl ='CC-MAIN-2020-29'OR crawl ='CC-MAIN-2020-34'OR crawl ='CC-MAIN-2020-40'OR crawl ='CC-MAIN-2020-45' OR crawl ='CC-MAIN-2020-50')
  AND subset = 'warc'
  AND ((url_path like '%pandemic%' AND url_path like'%economy%')
  OR (url_path like'%COVID-19%'AND url_path like' %economy%'))
group by 1
order by n desc
limit 1000
