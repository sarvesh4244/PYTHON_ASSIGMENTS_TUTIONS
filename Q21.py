#Write a Python function to reverses a string if its length is a multiple of 4.
name=input("Enter the string: ")
if len(name) % 4 == 0:
    reverse_string=""
    for i in name:
        reverse_string=i+reverse_string
    print(reverse_string)
else:
    print("The given String is not a multiple of four ")