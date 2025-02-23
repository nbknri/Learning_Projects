from tkinter import *


window= Tk()

window.title("New Style")

window.geometry("600x400")
window.config(bg="aqua")

# img = PhotoImage(file="photo.png")

lb1 = Label(window, 
            text="Najeeb Kalarikkal", 
            font=("Arial", 20, "underline", "bold"), 
            fg="green", 
            bg="violet", 
            # width=20, 
            # height=3, 
            # padx=50, 
            # pady=50,
            # anchor=W, 
            # cursor="plus"
            # image=img,
            # state=DISABLED

            )
# lb1.pack(side=RIGHT)
# lb1.pack(fill=X)
# lb1.pack(side=LEFT,fill=Y)
lb1.pack()

btn = Button(window,
             text="Click",
             font=("Arial", 20, "bold"),
             bg="red",
             fg="yellow",
             activebackground="green",
             activeforeground="blue",
            #  state=DISABLED
             )
btn.pack()


window.mainloop()