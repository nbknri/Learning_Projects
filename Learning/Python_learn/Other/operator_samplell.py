class sample:
    def set_name(self,name):
        self.name= name
    def __add__(selfx, nbk):
        name= selfx.name + " " + nbk.name
        return name


first_name= sample()
second_name= sample()

first_name.set_name("Najeeb")
second_name.set_name("Kalarikkal")

full_name = first_name + second_name

print(full_name)