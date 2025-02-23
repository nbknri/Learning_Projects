from tkinter import *
from tkinter import messagebox

window = Tk()
window.title("Pop Up Dioalog Box")
window.geometry("400x350")

lb1 = Label(window, text="Username :", font=14, width=10)
lb2 = Label(window, text="Password :", font=14, width=10)

lb1.grid(row=0,column=0, padx=5, pady=5)
lb2.grid(row=1,column=0, padx=5, pady=5)

username = StringVar()
password = StringVar()


tb1 = Entry(window, textvariable=username, font=14)
tb2 = Entry(window, textvariable=password, font=14, show="*")

tb1.grid(row=0, column=1)
tb2.grid(row=1, column=1)

def login():
    if username.get()=="admin" and password.get()=="1234":
        messagebox.showinfo(title="Login Status", message="You have logged in")
    else:
        messagebox.showerror(title="Login Status", message="Username or Password is incorrect")

def cancel():
    status=messagebox.askyesno("Question", message="Do you want the closes window?")
    if status is True:
        window.destroy()
    else:
        messagebox.showwarning(title="Waring", message="Please login agian")

bt1 = Button(window, text="Login", font=14, command=login)
bt2 = Button(window, text="Cancel", font=14, command=cancel)

# bt1.place(x=130, y=80)
# bt2.place(x=200, y=80)

bt1.grid(row=2, column=1, sticky=W)
bt2.grid(row=2, column=1, sticky=E)

window.mainloop()