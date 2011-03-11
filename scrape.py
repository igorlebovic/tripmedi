import sys, os
import errno
import re
import urllib
import string

from BeautifulSoup import BeautifulSoup

import MySQLdb
from tripmedi_config_sql import *


# Open data connection
db = Database()
dbConnection = db.connect()
dbError = db.getErrorObject()

country_cursor = db.getCursor(dbConnection)


country = ""
provider_name = ""
provider_latitude = ""
provider_longitude = ""
last_accredited = ""
city = ""
provider_region_rank = ""
provider_url = ""
provider_id = 1

data_filename = "provider_import.data"

# Open a data file to append or create if doesn't exist
try:
    data_file = open(data_filename, "a")
except IOError, e:
    if (e.errno == errno.ENOENT):
        try:
            data_file = open(data_filename, "w")
        except IOError, e:
            print "Can't create or open log file!"
            sys.exit(2)
    elif (e.errno is not None):
        print "Problem with data file: %s" % (os.strerror(e.errno), )

# Do all regions
region_list = ["latin_america", "europe", "asia", "meast", "oceania", "africa"]

for each_region in region_list:
    print "loop"
    # Fetch the page
    page_text = urllib.urlopen("http://hospitals.webometrics.info/top100_continent.asp?cont=" + each_region).read()

    # Create the soup object from the HTML data
    soup = BeautifulSoup(page_text)

    # Find the proper tag
    table = soup.findAll("table")[11]
    rows = table("tr")

    for each_row in rows[4:]:
        each_col_count = 1

        for each_col in each_row("td"):

            anchor = each_col.find("a", href=True)

            if (anchor):
                provider_href = str(anchor)
                provider_url_start_index = string.find(provider_href, "http://")
                provider_url_end_index = string.find(provider_href, '"', provider_url_start_index)
                provider_url = provider_href[provider_url_start_index:provider_url_end_index]

                anchor_text = each_col.find("a", text=True)

                if (anchor_text.strip() is not None):
                    provider_name = anchor_text

            country_image = each_col.find("img", alt=True)

            if (country_image):
                country_name = str(country_image)
                country_name_start_index = string.find(country_name, "Flag of ") + 8
                country_name_end_index = string.find(country_name, '"', country_name_start_index)
                country_code = country_name[country_name_start_index:country_name_end_index]

                country_code = country_code.strip()

                # Get country ID
                country_cursor.execute("SELECT id FROM app_country WHERE ISO_alpha_2_code = %s", (country_code, ))
                country_row = country_cursor.fetchone()

                if (country_row is not None):
                    country_id = country_row[0]
                else:
                    continue

            rank_test = each_col.find("WORLD RANK", text=True)

            if (rank_test):
                if (each_col_count == 4):
                    provider_region = str(each_col)
                    provider_region_start_index = string.find(provider_region, 'center">') + 8
                    provider_region_end_index = string.find(provider_region, '<', provider_region_start_index)
                    provider_region_rank = provider_region[provider_region_start_index:provider_region_end_index]

                    provider_region_rank = provider_region_rank.strip()

                    each_col_count += 1
                elif (each_col_count == 5):
                    each_col_count = 1
                else:
                    each_col_count += 1

        if (country_id and provider_region_rank and provider_name and provider_url):
            data_file.write(str(provider_id) + "|" + str(country_id) + "|" + provider_name.encode("utf-8") + "|" + str(provider_latitude) + "|" + str(provider_longitude) + "|" + last_accredited + "|" + city.encode("utf-8") + "|" + provider_region_rank + "|" + provider_url + "\n")

            country_id = None
            provider_region_rank = None
            provider_name = None
            provider_url = None
        
            provider_id += 1

data_file.close()
