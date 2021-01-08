# demilt
# This goal of this code is to find pages from the common crawl archive that discuss or are relevant to COVID-19’s economic impact in 2020.
# I plan on using Python to extract raw data from the Common Crawl archives and inserting the URLs of said data into a list. 
 
# First approach: extracting data from HTML using beautiful soup, run search 2020 for URLs -- could  not achieve desired results, was not able to extract legitimate data. Search using keywords, like 'covid and economy,''pandemic and economy,''covid-19,''coronavirus,''financial,''economy'. Intended to create a list of URL values, or multi-dimensional lists with months.

# Second approach: using Athena in AWS to query data, then downloading and uploading data in form of CSV file to Python using CDX_Toolkit. Access WARC files and sort/prettify using beautiful soup.



