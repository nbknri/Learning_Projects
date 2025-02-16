from tkinter import *
import random

Window = Tk()
Window.title("Tic Tac Toe Game")
Window.geometry("400x400")

# Board value store
board = [" "]*10

computer = "X"
human = "O"

def check_win():
    if board[1] == board[2] == board[3] and board[1] !=" ":
        clm_1.config(bg = "green")
        clm_2.config(bg = "green")
        clm_3.config(bg = "green")
        return True
    elif board[4] == board[5] == board[6] and board[4] !=" ":
        clm_4.config(bg = "green")
        clm_5.config(bg = "green")
        clm_6.config(bg = "green")
        return True
    elif board[7] == board[8] == board[9] and board[7] !=" ":
        clm_7.config(bg = "green")
        clm_8.config(bg = "green")
        clm_9.config(bg = "green")
        return True
    elif board[1] == board[4] == board[7] and board[1] !=" ":
        clm_1.config(bg = "green")
        clm_4.config(bg = "green")
        clm_7.config(bg = "green")
        return True
    elif board[2] == board[5] == board[8] and board[2] !=" ":
        clm_2.config(bg = "green")
        clm_5.config(bg = "green")
        clm_8.config(bg = "green")
        return True
    elif board[3] == board[6] == board[9] and board[3] !=" ":
        clm_3.config(bg = "green")
        clm_6.config(bg = "green")
        clm_9.config(bg = "green")
        return True
    elif board[1] == board[5] == board[9] and board[1] !=" ":
        clm_1.config(bg = "green")
        clm_5.config(bg = "green")
        clm_9.config(bg = "green")
        return True
    elif board[7] == board[5] == board[3] and board[7] !=" ":
        clm_7.config(bg = "green")
        clm_5.config(bg = "green")
        clm_3.config(bg = "green")
        return True
    else:
        return False

def check_draw():
    if board.count(" ") <2:
        return True 
    else:
        return False

def is_available(pos):
    return True if board[pos] == " " else False

def insert(letter,pos):
    if is_available(pos):
        board[pos] = letter
        if check_win():
            if letter == "X":
                result.config(text="Sorry, You are Lost !!", bg= "yellow", fg= "Red")
            else:
                result.config(text="Congrats, You are Win !!", bg= "yellow", fg= "green")
        else:
            if check_draw():
                result.config(text="Draw !!", bg= "yellow", fg= "blue")
    else:
        if letter == "X":
            pos = random.randint(1, 9)
            insert(letter,pos)
    
    clm_1.config(text = board[1])
    clm_2.config(text = board[2])
    clm_3.config(text = board[3])
    clm_4.config(text = board[4])
    clm_5.config(text = board[5])
    clm_6.config(text = board[6])
    clm_7.config(text = board[7])
    clm_8.config(text = board[8])
    clm_9.config(text = board[9])
        
def human_move(letter,pos):
    if board[pos] == " ":
        insert(letter,pos)
        if not check_win():
            computer_move(computer)
    

def computer_move(letter):    
    pos = random.randint(1, 9)
    insert(letter, pos)


# Board settings
clm_1 = Button(Window, text="1", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 1))
clm_2 = Button(Window, text="2", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 2))
clm_3 = Button(Window, text="3", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 3))
clm_4 = Button(Window, text="4", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 4))
clm_5 = Button(Window, text="5", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 5))
clm_6 = Button(Window, text="6", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 6))
clm_7 = Button(Window, text="7", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 7))
clm_8 = Button(Window, text="8", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 8))
clm_9 = Button(Window, text="9", width=6, height=2, padx=6, bd=3, command=lambda: human_move(human, 9))

result = Label(Window, text="")

# Board order settings
clm_1.grid(row=0, column=0)
clm_2.grid(row=0, column=1)
clm_3.grid(row=0, column=2)
clm_4.grid(row=1, column=0)
clm_5.grid(row=1, column=1)
clm_6.grid(row=1, column=2)
clm_7.grid(row=2, column=0)
clm_8.grid(row=2, column=1)
clm_9.grid(row=2, column=2)
result.place(relx = 0.5, rely = 0.5, anchor = CENTER)


computer_move(computer)


Window.mainloop()