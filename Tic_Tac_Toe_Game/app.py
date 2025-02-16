from tkinter import *
import random

window = Tk()
window.title("Tic Tac Toe Game")
window.geometry("400x400")
window.config(bg="black")
frame = Frame(window, padx=20, pady=20, bg="black")  # Adds margin inside the window
frame.pack(padx=20, pady=20)

# Board value store
board = [" "]*10

computer = "X"
human = "O"

def check_win():
    if player == "O":
        color = "green"
    else:
        color = "red"
    if board[1] == board[2] == board[3] and board[1] !=" ":
        clm_1.config(bg = color)
        clm_2.config(bg = color)
        clm_3.config(bg = color)
        return True
    elif board[4] == board[5] == board[6] and board[4] !=" ":
        clm_4.config(bg = color)
        clm_5.config(bg = color)
        clm_6.config(bg = color)
        return True
    elif board[7] == board[8] == board[9] and board[7] !=" ":
        clm_7.config(bg = color)
        clm_8.config(bg = color)
        clm_9.config(bg = color)
        return True
    elif board[1] == board[4] == board[7] and board[1] !=" ":
        clm_1.config(bg = color)
        clm_4.config(bg = color)
        clm_7.config(bg = color)
        return True
    elif board[2] == board[5] == board[8] and board[2] !=" ":
        clm_2.config(bg = color)
        clm_5.config(bg = color)
        clm_8.config(bg = color)
        return True
    elif board[3] == board[6] == board[9] and board[3] !=" ":
        clm_3.config(bg = color)
        clm_6.config(bg = color)
        clm_9.config(bg = color)
        return True
    elif board[1] == board[5] == board[9] and board[1] !=" ":
        clm_1.config(bg = color)
        clm_5.config(bg = color)
        clm_9.config(bg = color)
        return True
    elif board[7] == board[5] == board[3] and board[7] !=" ":
        clm_7.config(bg = color)
        clm_5.config(bg = color)
        clm_3.config(bg = color)
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
    global player
    player = letter
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


def reset_function():
    global board
    board = [" "]*10
    clm_1.config(text = "", bg="white", )
    clm_2.config(text = "", bg="white", )
    clm_3.config(text = "", bg="white", )
    clm_4.config(text = "", bg="white", )
    clm_5.config(text = "", bg="white", )
    clm_6.config(text = "", bg="white", )
    clm_7.config(text = "", bg="white", )
    clm_8.config(text = "", bg="white", )
    clm_9.config(text = "", bg="white", )
    result.config(text="", bg="black", )  
    computer_move(computer)


# Board settings
clm_1 = Button(frame, text="1", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 1))
clm_2 = Button(frame, text="2", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 2))
clm_3 = Button(frame, text="3", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 3))
clm_4 = Button(frame, text="4", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 4))
clm_5 = Button(frame, text="5", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 5))
clm_6 = Button(frame, text="6", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 6))
clm_7 = Button(frame, text="7", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 7))
clm_8 = Button(frame, text="8", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 8))
clm_9 = Button(frame, text="9", width=5, height=2, padx=6, bd=3, bg="white", font=("Times New Roman",15,"bold"), command=lambda: human_move(human, 9))

result = Label(window, text="", padx=6, bg="black", font=("Times New Roman",15,"bold"))
resetbtn = Button(window, text="Rest", width=10, bg="blue", fg="white", font=("Times New Roman",15,"bold"), command=reset_function)

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
result.place(relx = 0.5, rely = 0.75, anchor = CENTER)
resetbtn.place(relx = 0.5, rely = 0.90, anchor = CENTER)


computer_move(computer)


window.mainloop()