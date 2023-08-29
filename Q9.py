#Write a Python program to sum of three given integers. However, if two values are equal sum will be zero. 

num1=int(input("Enter the number A :"))
num2=int(input("Enter the number B :"))
num3=int(input("Enter the number C :"))
if num1==num2 or num2==num3 or num3 == num1:
    print("The sum is 0")
else:
    print(num1 + num2 + num3)