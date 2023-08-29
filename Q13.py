# Write a Python program to count the number of characters (character frequency) in a string 
b=0
a=input("Enter the word : ")
for i in a:
    if i.isalpha():
        b+=1
    
print(b)

