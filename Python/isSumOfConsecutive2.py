def isSumOfConsecutive2(n):
    ct = 0
    q = 0
    for y in range(1, n):
        for x in range(y, n+1):
            q += x
            if q == n:
                ct += 1
        q = 0

    return ct

# Other solutions
# def isSumOfConsecutive2(n):
#
#     a=[x for x in range(1,n)]
#     b=0
#
#     for i in range(len(a)):
#         for j in range(7):
#             if sum(a[i:i+j])==n:
#                 b+=1
#
#     return b
