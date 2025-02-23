# class HelloWorld():
#     def name_print(self):
#         name = input("Enter your name: ")
#         self.display(name)

#     def display(self, name):
#         print("Hello,", name)


# if __name__ == "__main__":
#     app = HelloWorld()
#     app.name_print()



class HelloWorld():
    wish = "How are you ?"
    def name_print(self):
        name = input("Enter your name: ")
        return name
        
    def display(self):
        name = self.name_print()
        print("Hello,", name+",", self.wish)


if __name__ == "__main__":
    app = HelloWorld()
    app.display()
