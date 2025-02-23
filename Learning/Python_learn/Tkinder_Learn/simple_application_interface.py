

from tkinter import *

window = Tk()

window.geometry("400x300")

result = StringVar()

def sum():
    sum = int(txb1.get())+int(txb2.get())
    result.set(sum)

lb1 = Label(window, text="Number`:")
lb2 = Label(window, text="Number2:")
lb3 = Label(window, text="Results")

txb1 = Entry(window)
txb2 = Entry(window)
txb3 = Entry(window, textvariable=result)

lb1.pack()
txb1.pack()

lb2.pack()
txb2.pack()

lb3.pack()
txb3.pack()

btn = Button(window, text="Find", command=sum)
btn.pack()


window.mainloop()