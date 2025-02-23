class BaseClalss:
    def __init__(self):
        print("Bese init")
    def set_name(self, name, age):
        self.name = name
        self.age = age


class SubClass(BaseClalss):
    def __init__(self):
        # BaseClalss.__init__(self)
        super().__init__()
        print("Sub init")

    def set_name(self, name, age):
        # self.name = "Kalarikkal"
        super().set_name(name,age)
        self.age = 30

    def welcome(self):
        print("Welcome")

    def display_name(self):
        print("Name: ", self.name)
        print("Age: ", self.age)

print("-------------------")
x= SubClass()
x.welcome()
x.set_name("Najeeb", 35)
x.display_name()
