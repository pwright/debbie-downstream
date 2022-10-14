# Python program to convert
# JSON file to CSV
 
 
import json
import csv
 
 
# Opening JSON file and loading the data
# into the variable data
with open('build/vale-flat.json') as json_file:
    data = json.load(json_file)
 
 
# now we will open a file for writing
data_file = open('build/data_file.csv', 'w')
 
# create the csv writer object
csv_writer = csv.writer(data_file,quoting=csv.QUOTE_ALL)

 
# Counter variable used for writing
# headers to the CSV file
count = 0


for row in data:
    # Writing data of CSV file
    key=row
    value= data.get(row)
    print(key,value)
    csv_writer.writerow([key,value])
 
data_file.close()