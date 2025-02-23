def linesearch(l, key):
    for index, element in enumerate(l):
        if key == element:
            print("Item ",element, "foud at", index+1)
            break
    else:
        print("Item not found")

linesearch([34, 56, 89, 90],34)

"""
def linesearch(list, key):
    for i in range(len(list)):
        if key == list[i]:
            print("Item foud at", i+1)
            break
    else:
        print("Item not found")

linesearch([34, 56, 89, 90],56)
"""