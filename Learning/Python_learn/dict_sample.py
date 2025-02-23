values=[{"Name": "Najeeb", "Age": "35", "Place": "Anappadi"},
        {"Name": "Shabana", "Age": "28", "Place": "Ponnani"}]

print(values[1].get("Name"))

for item in values:
    for key, value in item.items():
        print(f"{key}: {value}")
    print()


