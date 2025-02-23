class version1():

    def button(self):
        print("color red")

class version2(version1):

    def button(self):
        print("color yellow")

app = version2()
app.button()