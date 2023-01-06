import csv
from csv import DictReader

filename= "data/states.csv"


states={"State":[], "Abbr":[], "State Capital":[], "Region":[]};

with open(filename, 'r') as data:
    dict_reader = DictReader(data, dialect=csv.excel_tab)
    list_of_dict = list(dict_reader)
    

for i in range(len(list_of_dict)):
    print(list_of_dict[i])

new_dict = {}
for item in list_of_dict:
    state = item.pop('State')
    new_dict[state] = item