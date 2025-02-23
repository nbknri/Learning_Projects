import sys
import os
from tkinter import *

#main window
window = Tk()

# Size of window
window.geometry("408x395+500+100",)
# Window setting
window.configure(bg="black", padx=5, pady=5)
# Disable resize button in window
window.resizable(False, False)

path = getattr(sys, '_MEIPASS', os.getcwd())
# Title of window
window.title("Calculator")

# Icon image add
try:
    window.iconbitmap(path+"/icon.ico")
except:
    pass

# Using for Display value storing
display_value = ""

# Using for Old value storing
old_value = ""
# Using for Result value storing
result = ""
# Using for Remove display value after pressing any operation button then pressing any number button
number_button_press = False
# Using for save operator button value
operator_value = ""

# Label to display the operation
label = Label(window, text="0", font=("Arial", 30),
              width=17, height=1, bg="white", anchor="e")
label.grid(row=0, column=0, columnspan=5, padx=(1, 5), pady=(5, 10))

# Button actions
def press(key):
    global display_value
    global number_button_press
    global old_value
    global operator_value
    global result

    # Clear button function
    if key == "clear":
        display_value = ""
        old_value = ""
        number_button_press = False
        operator_value = ""
        result = ""
        label.config(text= "0") # After clearing display showing zero

    # Backspace button function
    elif key == "backspace":
        display_value = display_value[:-1] # Remove last number
        if display_value == "" : # Blank display not visible
            label.config(text="0")
        else:
            label.config(text=display_value)

    elif key == "percentage":
        if not old_value == "":
            result = float(display_value) * float(old_value) / 100
            result = str(int(result)) if result.is_integer() else f"{result:.15g}"
            label.config(text=result)

    # Operator button function
    elif key in ("+","-","*","/","="):
        if not display_value == "": # Ensure a number was entered before pressing an operator
            if old_value == "": # First operator press
                old_value = display_value

            else: # Perform the previous operation
                if operator_value == "+":
                    result = (float(old_value)) + (float(display_value))
                elif operator_value == "-":
                    result = (float(old_value)) - (float(display_value))
                elif operator_value == "*":
                    result = (float(old_value)) * (float(display_value))
                elif operator_value == "/":
                    try:
                        result = (float(old_value)) / (float(display_value))
                    except ZeroDivisionError:
                        result = "Error"
                        label.config(text="Cannot divide by zero")

                # Using for don't save "Error" for old_value
                if result == "Error":
                    old_value = ""
                else:
                    # Convert to integer if no decimal part, else limit to 15 characters
                    result = str(int(result)) if result.is_integer() else f"{result:.15g}"

                    label.config(text=result)
                    old_value = result  # Store as string for the next operation
                    result = ""

            display_value = ""

        operator_value = key # Update operator for next operation
    # Zero button function started
    elif key == "0": # Zero button function
        if not display_value == "0" and not len(display_value) == "1" and not len(display_value) > 16: # Using for not repeat two or more zero only in display and set number limit in display
            display_value += "0"
            label.config(text=display_value)
    # Dot button function started
    elif key == "dot":
        dot_check_in_display_position = display_value.find(".") # Checking already available for dot in display
        if display_value == "":
            display_value = "0."
            label.config(text=display_value)
        elif dot_check_in_display_position <0 and not len(display_value) > 16: # Stop add two or more dot in display and set number limit in display
            display_value += "."
            label.config(text=display_value)

    # Plusminus button function
    elif key == "plusminus":
        if not display_value == "0": # Removing error of display value only zero
            display_value = float(label.cget("text"))*(-1) # Convert to negative to positive and positive to negative
            display_value = str(int(display_value)) if display_value.is_integer() else f"{display_value}" # Remove errors, set limit of float value
            display_value = str(display_value)
            label.config(text=display_value)

    else : # Number button function (without zero)
        if operator_value == "=":
            old_value = "" # Don't press any operation button, that time refresh old values (ready for new calculation)

        if not display_value == "0" and not type(key) == "str": # Using for without display first number is zero
            if not len(display_value) > 16: # Set limit of display numbers
                display_value += key
                label.config(text=display_value)
        elif display_value == "0": # Stop only two or more zero in display
            display_value = key
            label.config(text=display_value)

        number_button_press = True  # Using for clear display for pressing any number button of after press of any operation button


# First Row of Buttons
row_number = 1
# Clear button
clear_button = Button(window, text = "C", command = lambda:press("clear"),
                      width = 8, height = 2, bg = "#504c4b", fg = "orange",
                      font=("Arial", 14), activebackground="orange", activeforeground="white") # Button active time background and font color change
clear_button.grid(row=row_number, column=0, pady=(0, 3))

# Backspace button
backspace_button = Button(window, text = "⌫", command = lambda:press("backspace"),
                      width=8, height=2, bg="#504c4b", fg="orange",
                      font=("Arial", 14))
backspace_button.grid(row=row_number, column=1, pady=(0, 3))

# Percentage button
percentage_button = Button(window, text = "%", command = lambda:press("percentage"),
                      width=8, height=2, bg="#504c4b", fg="orange",
                      font=("Arial", 14))
percentage_button.grid(row=row_number, column=2, pady=(0, 3))

# Division button
division_button = Button(window, text = "/", command = lambda:press("/"),
                     width=8, height=2, bg="#504c4b", fg="orange",
                     font=("Arial", 14))
division_button.grid(row=row_number, column=3, pady=(0, 3))


# Second Row of Buttons
row_number = 2
# Seven button
seven_button = Button(window, text = "7", command = lambda:press("7"),
                      width=8, height=2, bg="#504c4b", fg="white",
                      font=("Arial", 14))
seven_button.grid(row=row_number, column=0, pady=(0, 3))

# Eight button
eight_button = Button(window, text = "8", command = lambda:press("8"),
                      width=8, height=2, bg="#504c4b", fg="white",
                      font=("Arial", 14))
eight_button.grid(row=row_number, column=1, pady=(0, 3))

# Nine button
nine_button = Button(window, text = "9", command = lambda:press("9"),
                     width=8, height=2, bg="#504c4b", fg="white",
                     font=("Arial", 14))
nine_button.grid(row=row_number, column=2, pady=(0, 3))

# Multiplication button
multiplication_button = Button(window, text = "x", command = lambda:press("*"),
                      width = 8, height = 2, bg = "#504c4b", fg = "orange",
                      font=("Arial", 14))
multiplication_button.grid(row=row_number, column=3, pady=(0, 3))


# Third Row of Buttons
row_number = 3
# Four button
four_button = Button(window, text = "4", command = lambda:press("4"),
                      width=8, height=2, bg="#504c4b", fg="white",
                      font=("Arial", 14))
four_button.grid(row=row_number, column=0, pady=(0, 3))

# Five button
five_button = Button(window, text = "5", command = lambda:press("5"),
                      width=8, height=2, bg="#504c4b", fg="white",
                      font=("Arial", 14))
five_button.grid(row=row_number, column=1, pady=(0, 3))

# Six button
six_button = Button(window, text = "6", command = lambda:press("6"),
                     width=8, height=2, bg="#504c4b", fg="white",
                     font=("Arial", 14))
six_button.grid(row=row_number, column=2, pady=(0, 3))

# Minus button
minus_button = Button(window, text = "-", command = lambda:press("-"),
                      width = 8, height = 2, bg = "#504c4b", fg = "orange",
                      font=("Arial", 14))
minus_button.grid(row=row_number, column=3, pady=(0, 3))


# Forth Row of Buttons
row_number = 4
# One button
one_button = Button(window, text = "1", command = lambda:press("1"),
                      width=8, height=2, bg="#504c4b", fg="white",
                      font=("Arial", 14))
one_button.grid(row=row_number, column=0, pady=(0, 3))

# Two button
two_button = Button(window, text = "2", command = lambda:press("2"),
                      width=8, height=2, bg="#504c4b", fg="white",
                      font=("Arial", 14))
two_button.grid(row=row_number, column=1, pady=(0, 3))

# Three button
three_button = Button(window, text = "3", command = lambda:press("3"),
                     width=8, height=2, bg="#504c4b", fg="white",
                     font=("Arial", 14))
three_button.grid(row=row_number, column=2, pady=(0, 3))

# Plus button
plus_button = Button(window, text = "+", command = lambda:press("+"),
                      width = 8, height = 2, bg = "#504c4b", fg = "orange",
                      font=("Arial", 14))
plus_button.grid(row=row_number, column=3, pady=(0, 3))

# Fifth Row of Buttons
row_number = 5
# Plusminus button
plusminus_button = Button(window, text = "+/-", command = lambda:press("plusminus"),
                      width=8, height=2, bg="#504c4b", fg="white",
                      font=("Arial", 14))
plusminus_button.grid(row=row_number, column=0, pady=(0, 3))

# Zero button
zero_button = Button(window, text = "0", command = lambda:press("0"),
                      width=8, height=2, bg="#504c4b", fg="white",
                      font=("Arial", 14))
zero_button.grid(row=row_number, column=1, pady=(0, 3))

# Dot button
dot_button = Button(window, text = ".", command = lambda:press("dot"),
                     width=8, height=2, bg="#504c4b", fg="white",
                     font=("Arial", 14))
dot_button.grid(row=row_number, column=2, pady=(0, 3))

# Equal button
equal_button = Button(window, text = "=", command = lambda:press("="),
                      width = 8, height = 2, bg = "orange", fg = "white",
                      font=("Arial", 14))
equal_button.grid(row=row_number, column=3, pady=(0, 3))


window.mainloop()
