# Write a Python function to insert a string in the middle of a string.
def add(a,b):
    d=len(a)//2
    c=a[:d]+" "+b+a[d:]
    print(c)
a="sarvesh vaishna"
b="ashokbhai"
add(a,b)