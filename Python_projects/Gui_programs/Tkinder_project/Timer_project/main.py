from tkinter import *
from tkinter.ttk import Label

window = Tk()
window.title("Timer")
window.geometry("400x400")

# Function to validate input (Only numbers >= 1)
def validate_input(new_value):
    if new_value.isdigit():  # Check if input is a number
        return int(new_value) >= 1  # Allow only numbers >= 1
    elif new_value == "":  # Allow empty input (optional)
        return True
    return False  # Reject other inputs

# Register validation function
validate_cmd = window.register(validate_input)

# Set default value and apply validation
inp_val = IntVar(value=1)
inp = Entry(window, textvariable=inp_val, validate="key", validatecommand=(validate_cmd, "%P"))
inp.pack()

lbl = Label(window, text="00:00")
lbl.pack()

after_id = None


def count_down(ts):
    global after_id
    if ts >= 1:
        mins, secs = divmod(ts, 60)
        time_now = "{:02d}:{:02d}".format(mins, secs)
        lbl.config(text=time_now)
        after_id = window.after(1000, count_down, ts-1)
    else:
        lbl.config(text="Time up!!")

def main():
    global after_id
    try:
        time_in_seconds = inp_val.get() * 60
        if after_id:
            window.after_cancel(after_id)
        count_down(time_in_seconds)
    except TclError:
        lbl.config(text="Enter any number")

btn = Button(window, text="START", command=main)
btn.pack()

def stop():
    global after_id
    if after_id:
        window.after_cancel(after_id)
        after_id = None
    lbl.config(text="STOPPED !!")

btn_stop = Button(window, text="STOP", command=stop)
btn_stop.pack()


window.mainloop()