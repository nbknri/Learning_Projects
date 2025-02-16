from tkinter import *
import random

window = Tk()
window.title("Rock Game")
window.geometry("400x400")

choice = IntVar()
data_list = ["Rock","Paper","Scissor"]

def choice_function():
    pc = random.choice(data_list)
    my = data_list[choice.get()]

    if pc == my:
        result.config(text= "Tie !!", bg="yellow",fg="blue")

    elif (pc == "Rock" and my == "Paper") or (pc == "Paper" and my == "Scissor") or (pc == "Scissor" and my == "Rock") :
         result.config(text= "Congrats your are win !!", bg="yellow",fg="green")
         
    else:
         result.config(text= "Sorry, You are lose !!", bg="yellow",fg="red")
         
    lbl.config(text="Computer Choice: "+pc+"\nYour Choice: "+my)

Radiobutton(window, text=data_list[0], variable=choice, value=0, indicator = 0, background = "light blue").pack(fill = X, ipady = 5)
Radiobutton(window, text=data_list[1], variable=choice, value=1, indicator = 0, background = "light blue").pack(fill = X, ipady = 5)
Radiobutton(window, text=data_list[2], variable=choice, value=2, indicator = 0, background = "light blue").pack(fill = X, ipady = 5)

btn = Button(window,text="SUBMIT", command=choice_function, font=('Arial',12,"bold"), activebackground="white", bg="blue", fg="white", activeforeground="blue").pack()

result = Label(window, text="", font=("Arial",20,"bold"))
result.pack()

lbl = Label(window, text="",)
lbl.pack()

window.mainloop()