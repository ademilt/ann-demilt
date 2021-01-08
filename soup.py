import requests
import csv
import re
import urllib.request
from bs4 import BeautifulSoup


page = requests.get('http://index.commoncrawl.org/')

soup = BeautifulSoup(page.text, 'html.parser')


# Create a file to write to, add headers row
file = csv.writer(open('2020-covid-economy-articles.csv', 'w'))
file.writerow(['Name', 'Link'])

#pulls all text from table class div (links in table of index server)
table_list = soup.find(class_='listing')

relevant_pages = []

table_list_links = table_list.find_all('a',text=re.compile("2020"))
for link in table_list_links:
    urls = link.contents[0]
    links = link.get('href')
    #data = open(links)
    
    
    file.writerow([urls, links])
    relevant_pages.append(link.get('href'))

print(relevant_pages)

    
