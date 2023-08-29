# Write a Python program to find the first appearance of the substring 'not' and 'poor' from a given string, if 'not' follows the 'poor', replace the whole 'not'...'poor' substring with 'good'. Return the resulting string. 

def replace_not_poor_with_good(input_str):
    not_index = input_str.find('not')
    poor_index = input_str.find('poor')
    
    if not_index != -1 and poor_index != -1 and poor_index > not_index:
        return input_str[:not_index] + 'good' + input_str[poor_index+4:]
    
    return input_str

input_string = input("Enter a string: ")
result = replace_not_poor_with_good(input_string)
print("Result:", result)

