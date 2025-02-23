def hello(*values):
    for i in values:
        print("My name is " + i[0])
        print("Age is " + i[1])
        print("Place " + i[2])
        print()



ls = ["Najeeb", "35", "Ponnai"]
ls2 = ["Shabana", "28", "Anappadi"]

hello(ls, ls2)
