
class HelloWorl():
    global name # Variable to blobal
    name = "Kiran"
    @staticmethod # Activate staic methode in class
    def display(): # Remove self in method
        print("Hello", name)

if __name__ == "__main__":
    # app = HelloWorl() # Create object
    # app.display() # Using with object

    HelloWorl.display() # Using without object