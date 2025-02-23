from tkinter import *

window=Tk()
window.title("Nbk Test")
window.geometry("553x300")
window.config(bg="aqua", pady=5, padx=5)

lb1 = Label(window, text="WELCOME1", fg="blue", bg="violet", font=("Arial", 16), width=10, height=1)
lb1.grid(row=0,column=0, padx=5, pady=5)

lb2 = Label(window, text="HELLO1", fg="white", bg="red", font=("Arial", 16), width=10, height=1)
lb2.grid(row=0,column=1, padx=5, pady=5)

lb3 = Label(window, text="WELCOME2", fg="blue", bg="pink", font=("Arial", 16), width=10, height=1)
lb3.grid(row=0,column=2, padx=5, pady=5)

lb4 = Label(window, text="HELLO2", fg="white", bg="blue", font=("Arial", 16), width=10, height=1)
lb4.grid(row=0,column=3, padx=5, pady=5)

lb5 = Label(window, text="WELCOME3", fg="blue", bg="yellow", font=("Arial", 16), width=10, height=1)
lb5.grid(row=1,column=0, padx=5, pady=5)

lb6 = Label(window, text="HELLO3", fg="white", bg="green", font=("Arial", 16), width=10, height=1)
lb6.grid(row=1,column=1, padx=5, pady=5)

lb7 = Label(window, text="WELCOME4", fg="blue", bg="white", font=("Arial", 16), width=10, height=1)
lb7.grid(row=1,column=2, padx=5, pady=5)

lb8 = Label(window, text="HELLO4", fg="white", bg="orange", font=("Arial", 16), width=10, height=1)
lb8.grid(row=1,column=3, padx=5, pady=5)


window.mainloop()