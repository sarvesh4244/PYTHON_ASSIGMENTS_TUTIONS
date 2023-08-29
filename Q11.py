# Write a python program to sum of the first n positive integers. 

def sum_of_first_n_integers(n):
    if n <= 0:
        return "Please enter a positive integer."
    
    total_sum = (n * (n + 1)) // 2
    return total_sum

n = int(input("Enter a positive integer n: "))
result = sum_of_first_n_integers(n)
print(f"The sum of the first {n} positive integers is: {result}")