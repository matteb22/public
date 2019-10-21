def pagesNumberingWithInk(current, numberOfDigits):
    while numberOfDigits > 0:
        numberOfDigits -= len(str(current))
        if numberOfDigits >= len(str(current)):
            current += 1
    return current

    # Other solutions
    # def pagesNumberingWithInk(current, numberOfDigits):
    # digits = math.ceil(math.log(current+1,10))
    # numberOfDigits -= digits
    # while numberOfDigits > 0:
    #     if current == 10 or current == 100 or current == 1000:
    #         digits += 1
    #     if numberOfDigits >= digits:
    #         current += 1
    #     numberOfDigits -= digits
    # return current
