num=float(input("Enter a number: "))
try:
    a=55/num
    print(a)
    print("try completed")
except ZeroDivisionError:
    print("can't divivde by zero")
    num=float(input("Please enter a new number: "))
    a = 55 / num
    print(a)

print("Program completed")