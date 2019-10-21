def depositProfit(deposit, rate, threshold):
    count = 0
    while deposit < threshold:
        count += 1
        deposit += deposit * (rate/100)
    return count


# Best solutsion
# def depositProfit(deposit, rate, threshold):
#
#     return math.ceil(math.log(threshold/deposit, 1+rate/100))
