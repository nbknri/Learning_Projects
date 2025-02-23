class version1():
    def v1(self):
        print("Button")
        print("text box")

class version2(version1):
    def v2(self):
        print("Drop down list")


class version3(version2):
    def v3(self):
        print("Signup Button")


if __name__ == "__main__":
    app = version3()
    app.v1()
    app.v2()
    app.v3()