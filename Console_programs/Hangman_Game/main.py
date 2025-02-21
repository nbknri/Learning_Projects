from hangman_pic import hangman
import random

# Computer guess the word
def guess_word():
    word = random.choice(words) # Gussed word save to word
    word = word.lower() # Computer converted word convert to lower case
    print("Guess the fruit")
    return word # Return to gussued word

# Chek user enterd letter available in computer gussed word
def is_present(letter):
    if letter.lower() in word.lower(): # user entered letter and computer gussed word conver to lower case and check availablity
        return letter.lower() # return user entered letter and convert to lower case
    else:
        return False # User enterd letter wrong, return False

# Fill correct letter enterd user display that letter 
def fill_blank(letter):
    global display_dash, word
    display_dash = list(display_dash) # Convert display_dash to List
    for i,l in enumerate(word): # Find index and letter of user entered letter in computer gussed word
        if letter == l: # Check if availabel letter in gussued word
            display_dash[i] = letter # Add that letter to correct position of word in display_dash
        
    print("".join(display_dash)) # For convert display_dash to string for good watch of display_dash

# Print hangam_pic every chance
def make_hangman():
    global chances
    chances += 1
    print(hangman[chances])

# When user enter single letter
def check_letter(user_choice):
    letter = is_present(user_choice)
    if letter:
        fill_blank(letter)
    else:
        make_hangman()

# When user enter full word
def check_word(user_choice):
    if user_choice.lower() == word.lower():
        return True
    else:
        return False 

#Initial setup
chances = 0
is_win = False
words = ["Apple","Orange","Kiwi","Banana","Plum","Watermelon", "Apricot","Strawberry", "Olive", "Papaya", "Peach", "Ramphal", "Pomegranate", "Pineapple", "Rambutan", "Avocado", "Grapes", "Guava", "Jackfruit", "Lychee", "Mango", "Blackberry", "Blueberry", "Passionfruit"]
word = guess_word()

display_dash = ("-"*len(word)) # hidden computer gussed word and show same length "-" in display
print(display_dash)
print(hangman[0]) # Print first hangman_pic in display

#main loop
while chances <= 5 and not is_win: # Limit maximum time
    user_choice = input() # Get user guess letter
    if len(user_choice) == 1:
        check_letter(user_choice)
    else:
        is_win = check_word(user_choice)
        break

    if "-" not in display_dash:
        is_win = True


# Result message display
if is_win:

    print("Congrats, Your are Win !! \nGuessed fruite name is", word)
else:
    print("Sorry, Your are Lost !! \nGuessed fruite name is", word)
