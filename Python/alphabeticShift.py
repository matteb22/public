def alphabeticShift(s):
    return "".join(chr((ord(i)-96)%26+97) for i in s)

# Other solutions
#     from string import ascii_lowercase
#
# def alphabeticShift(inputString):
#     c = {x: y for x, y in zip(ascii_lowercase, ascii_lowercase[1:] + ascii_lowercase[:1])}
#     return inputString.translate(str.maketrans(c))

# or
# def alphabeticShift(inputString):
#     s = ''
#
#     for i in inputString:
#         if i!= 'z':
#             s+= chr(ord(i)+1)
#         else:
#             s+='a'
#
#     return s
