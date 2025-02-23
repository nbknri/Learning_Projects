# Todo List App

# List
todo_list = []

# Add List
def add_list():
    item = input("Enter a Task: ")
    todo_list.append(item)
    print(f"{item} added to the todo list.\n")

# Display List
def display_list():
    print("--------------------\nTodo List:\n--------------------")
    if not todo_list:
        print("No tasks available.\n")
    else:
        for index, element in enumerate(todo_list, start=1):
            print(f"{index} - {element}")
    print()

# Edit list
def edit_list():
    display_list()
    index = input("Enter the item number you want to edit or press # to return to the main menu: ")

    if index == "#":
        return
    
    try:
        index = int(index)-1
        if 0 <= index < len(todo_list):
            edited_item = todo_list[index]
            todo_list[index] = input("Enter new Todo List: ")
            print(f"{edited_item} change to {todo_list[index]}\n")     
        else:
            print("Invalid input! Please enter a valid number.\n")
    except ValueError:
        print("Invalid input! Please enter a number.\n")

# Remove List
def remove_list():
    display_list()
    index = input("Enter your item number to remove or Go to Main Menu please enter #: ")

    if index == "#":
        return
    
    try:
        index = int(index)-1
        if 0 <= index < len(todo_list):
            removed_item = todo_list.pop(index)
            print(f"{removed_item} removed from the list\n")     
        else:
            print("Invalid input! Please enter a valid number.\n")
    except ValueError:
        print("Invalid input! Please enter a valid number.\n")

# Main Menu Display
def main_display():
    while True:
        print("################\nTODO LIST APP\n################")
        print("1 - Add Todo List")
        print("2 - Display List")
        print("3 - Edit List")
        print("4 - Remove from List")
        print("5 - Exit")

        option = input("\nSelect your option: ")

        if option == "1":
            add_list()
        elif option == "2":
            display_list()
        elif option == "3":
            edit_list()
        elif option == "4":
            remove_list()
        elif option == "5":
            print("Exit")
            print("Exiting... Goodbye!")
            break
        else:
            print("Invalid option! Please select a valid number.\n")

# Start App
if __name__ == "__main__":
    main_display()