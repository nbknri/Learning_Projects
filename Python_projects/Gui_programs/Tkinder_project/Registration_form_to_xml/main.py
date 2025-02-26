from openpyxl import *
from tkinter import *
from tkinter import messagebox
import os

file_path = r'data.xlsx'

# Load or create workbook
if os.path.exists(file_path):
    wb = load_workbook(file_path)
    sheet = wb.active
else:
    wb = Workbook()
    sheet = wb.active
    sheet.title = "Sheet1"
    sheet.append(["Name"]) # Adding header
    wb.save(file_path)

def clear():
    name_field.delete(0, END)

def insert():
    name = name_field.get().strip()

    if not name:
        messagebox.showing("Input Error", "Name cannot be empty!")
        return
    
    sheet.append([name])
    wb.save(file_path)

    clear()
    messagebox.showinfo("Success", "Data saved succesfully!")

if __name__ == "__main__":
    # Create GUI window
    root = Tk()
    root.title("Register Form")
    root.geometry("300x150")

    # Name Label and Entry
    Label(root, text="Name: ").grid(row=0, column=0, padx=10, pady=10)
    
    # Entry
    name_field = Entry(root, width=30)
    name_field.grid(row=0, column=1, padx=10, pady=10)

    # Submit Button
    submit = Button(root, text="Submit", command=insert)
    submit.grid(row=1, column=1, padx=10)

    # Run the GUI
    root.mainloop()



