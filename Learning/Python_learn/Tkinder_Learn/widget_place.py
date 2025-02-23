from tkinter import *

window = Tk()
window.title("New File")
window.geometry("500x300")
window.config(bg="aqua")

lb1 = Label(window, text="Welcome", fg="blue", bg="yellow", font=("Arial", 16))
lb1.place(x=50, y=50)

lb2 = Label(window, text="Hello", fg="white", bg="red", font=("Arial", 16))
lb2.place(x=150, y=50)

window.mainloop()