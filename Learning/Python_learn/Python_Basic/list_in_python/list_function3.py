# Append function in List
a = [1, 3, 5]
a.append(7) # Add 7 in last position of list
print(a)
a.extend([9, 11, 13]) # Add new list in end of old list value
print(a)

# (+) (*)
a = [1, 3, 5]
print(a + [9, 7, 5])  # This one same as extent function
print(['hi'] * 3) # Three time multiple value added in list
print(a * 3) # Three time multiple value added in list

# Insert function in List
a = [1, 9]
a.insert(1, 3) # Insert '3' in 1st index position in list
print(a)
a[2:2] = [5, 7] # Insert new list in 2nd position in old List
print(a)

# Delete the List
my_list = [1, 3, 5, 7, 9, 11, 13]
del my_list # Delete the entire list
# print(my_list)