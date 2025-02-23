from tkinter import *
from tkinter.ttk import Combobox

window = Tk()
window.title("Multi Line")
window.geometry("500x500")

lb1 = Label(window, text="Post your comment")
lb1.pack()

# Multiline text box
textbox = Text(window, width=20, height=10)
textbox.pack()

lb2 = Label(window, text="Selct your languages")
lb2.pack()
item = StringVar()
# Combobox 
combo = Combobox(window, textvariable=item, values = ["English","Malayalam","Hindi"])
combo.pack()

lb3 = Label(window, text="Selct your skills")
lb3.pack()
# Listbox
listbox = Listbox(window, selectmode="multiple")
listbox.insert(1, "c")
listbox.insert(2, "c++")
listbox.insert(3, "Java")
listbox.insert(4, "Pthon")
listbox.insert(5, "Javascript")
listbox.pack()

def myfun():
    # Get data from Multiline box
    #data = textbox.get(1.0,END)

    #Get data from Combobox
    # data = item.get()

    #Get data from Listbox
    data =""    
    for i in listbox.curselection():
        data+=listbox.get(i)
        # Add comma for seperating
        data = data + ", "

    # Removing last comma    
    data = data[:-2]
    
    lb.config(text=data)


Button(window, text="Click", command=myfun).pack()

lb = Label(window, font=20, fg="green")
lb.pack()

window.mainloop()