import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button
from kivy.lang import Builder

kivy_as_a_file = Builder.load_file("todo.kv")

class todoApp(App):
    def build(self):
        return kivy_as_a_file
    
if __name__ == "__main__":
    my_app = todoApp()
    my_app.run()
        

