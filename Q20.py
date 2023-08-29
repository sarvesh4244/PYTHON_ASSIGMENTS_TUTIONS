#Write a Python function that takes a list of words and returns the length of the longest one. 
def longestword(word_list):
    max_len=0
    for word in word_list:
        if len(word) > max_len:
            max_len=len(word)
    return(max_len)
    
word_list=['Raj','Sarvesh']
answer=longestword(word_list)
print(f"The longest word in the list contains {answer} words")

