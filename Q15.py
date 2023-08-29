# Write a Python program to count occurrences of a substring in a string. 

def count_substring(str1, sub_str):
  count = 0
  for i in range(len(str1)):
    if str1[i:i + len(sub_str)] == sub_str:
      count += 1
  return count

print(count_substring("Hello, world!", "world",))
