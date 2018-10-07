from string import ascii_lowercase

def is_pangram(sentence):
    for char in ascii_lowercase:
        if char not in sentence.lower():
            return False
    return True