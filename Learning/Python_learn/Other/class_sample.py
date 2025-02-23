class MySampleClass:
    year = 2025
    def __init__(nbk,name,age,place):
        nbk.xname = name
        nbk.age = age
        nbk.place = place

    def add_age(self):
        self.age += 1

    def relocate(self,place):
        self.place = place

    def display(selfx):
        print("Year: ", MySampleClass.year)
        print("Name: "+ selfx.xname)
        print("Age: ",selfx.age)
        print("Place: ", selfx.place)
        print()

    @classmethod
    def add_year(clspp):
        clspp.year+=1

    @staticmethod
    def display_welcome():
        print("Welcome")

print()
MySampleClass.display_welcome()
print()

y = MySampleClass("Najeeb",35,"Ponnai")
x = MySampleClass("Shabana",28,"Anappadi")


x.display()
y.display()

print("---------------------------------------------")
MySampleClass.year +=1

x.add_age()
y.add_age()

x.display()
y.display()

print("---------------------------------------------")

MySampleClass.add_year()
x.add_age()
y.add_age()

x.relocate("Malappuram")
y.relocate("Kerala")

x.display()
y.display()