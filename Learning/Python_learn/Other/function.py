def hello(nums1,nums2):
    result = int(nums1)+int(nums2)
    return result

num1=input("Enter two numbers: ")
num2 = input()
sums = hello(num1,num2)
print("Result is " + str(sums))