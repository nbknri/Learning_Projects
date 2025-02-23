my_list = [3, 8, 1, 6, 0, 8, 4]
# Index function in List
print(my_list.index(8)) # Find index number 8 in list

# Count function in list
print(my_list.count(8)) # Count how much 8 in List

# Sort function in list (it's work only all list value as same type)
my_list1 = [4, 8, 0, 6, 1, 15, 100, 8, 3, 2]
my_list1.sort() # Sort list value lowest number to highest number, 
print(my_list1) 
my_list2 = ["z", "Orang", "s", "B", "a", "Mango", "k", "Apple", "b", "w", "A", "apple", "n", "mango"]
my_list2.sort() # Sort list value base of alphabet order, number of words and Capital letter words first then showing small letter words
print(my_list2) 

# Reverse function in list
my_list = [3, 8, 1, 6, 0, 8, 4]
my_list.reverse() # list value reverse
print(my_list)