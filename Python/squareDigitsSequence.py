def squareDigitsSequence(a0):
    sequence = [a0]
    while True:
        last = sequence[-1]
        digits = str(last)
        squared = 0
        for d in digits:
            squared += int(d)**2
        if squared in sequence:
            return len(sequence) + 1
        else:
            sequence.append(squared)
