num = int(input("Enter a number: "))
for i in range(1, num+1):
    for j in range(i):
        print("* ", end="")
    for k in range(num*2-i*2):
        print("  ", end="")
    for l in range(i):
        print("* ", end="")
    print()
for i in range(1, num + 1):
    for m in range(num-i+1):
        print("* ", end="")
    for n in range(i*2-2):
        print("  ", end="")
    for o in range(num-i+1):
        print("* ", end="")
    print()
