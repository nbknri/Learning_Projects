from tkinter import *

window = Tk()

# Title name change
window.title("NBKNRI") 

# Window size chanage
window.geometry("600x400") 
# Resize button diabale in window
# window.resizable("false","false") 

# Icon Change in window
# window.iconbitmap("icon.ico") 

 # Background color chage in window
window.config(bg="blue")

# Transparent full window
# window.attributes("-alpha",0.50) 

# Label windget
label1=Label(window, text="Enter your name")
label1.pack() # Using running

# Text box widget
txtbox = Entry(window)
txtbox.pack()



def msg ():
    name = txtbox.get()
    label2 = Label(window, text="Hello " + name)
    label2.pack()
    


# Button windget
button1 = Button(window, text="Click Me", command=msg)
button1.pack()



window.mainloop()

