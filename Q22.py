# Write a Python program to get a string made of the first 2 and the last 2 chars from a given a string. If the string length is less than 2, return instead of the empty string. 

a="sarvesh"
if(len(a)<4):
    print("empty strign")
else:
    print(a[:2],a[-2:])