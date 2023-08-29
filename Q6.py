# Write python program that swap two number with temp variable and without temp variable. 

a=int(input("Enter the integer A:"))
b=int(input("Enter the integer B:"))
print("Before Swapping")
print(a)
print(b)
c=a
a=b
b=c
print("After Swapping")
print(a)
print(b)

#without third variable
a=int(input("Enter the integer A:"))
b=int(input("Enter the integer B:"))
print("Before Swapping")
print(a)
print(b)
a=a+b #10+20=30
b=a-b #30-10=20
a=a-b #30 -20=10
print("After Swapping")
print(a)
print(b)

