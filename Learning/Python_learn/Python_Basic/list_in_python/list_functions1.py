# Remove fucntion in List
my_list = ['a', 't', 'o', 'z', 'k', 'o', 'w', 'l', 'e', 'd', 'g', 'e']
my_list.remove("t")
print(my_list)


# Pop function in List
print(my_list.pop(1)) # Remove index base
print(my_list)

print(my_list.pop()) # Remove last value in List (Using print that is showing removed item in list)
print(my_list)

# Clear funtction in List
my_list.clear() # Remove all List (clear all)
print(my_list)


my_list = ['a', 't', 'o', 'z', 'k', 'n', 'w', 'l', 'e', 'd', 'g', 'e']
my_list[2:5] = [] # Remove 2 to 4 in List
print(my_list)