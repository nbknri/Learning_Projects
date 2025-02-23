from tkinter import *

window=Tk()
window.title("Nbk Test")
window.geometry("553x300")
window.config(bg="aqua", pady=5, padx=5)

lb1 = Label(window, text="WELCOME1", fg="blue", bg="violet", font=("Arial", 16), width=10, height=1)
lb1.grid(row=0,column=0, padx=5, pady=5)

lb2 = Label(window, text="HELLO1", fg="white", bg="red", font=("Arial", 16), width=10, height=1)
lb2.grid(row=0,column=1, padx=5, pady=5)

for i in range(5):
    for j in range(4):
        lb1 = Label(window, text="WELCOME1", fg="blue", bg="violet", font=("Arial", 16), width=10, height=1)
        lb1.grid(row=i,column=j, padx=5, pady=5)


window.mainloop()