# import partial package
from functools import partial

def make_email(id, domain, extention): # Three argument function
    return id+domain+extention

id_name = input("Enter your id name: ")
my_email = partial(make_email, id_name) # Pass only one argument to make_email function
print(my_email("@gmail", ".com")) # Pass balance two arguments to function
