# Write a Python program to get the Factorial number of given number. 
num=int(input("Enter the number:"))
factorial=1
for fact in range(1,num+1):
    factorial *= fact
print(factorial)