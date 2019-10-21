def isPower(n):
    for x in range(1, 21):
        if n % x == 0:
            if super_power(x, n) is True:
                return True

    return False

def super_power(m, n):
    for x in range(2, 5):
        a = pow(m, x)
        if a == n:
            return True

    return False

# Other solutions
# def isPower(n):
#     if n == 1:
#         return True
#     for d in range(2,19):
#         p=2
#         while d**p<= n:
#             if d**p == n:
#                 return True
#             p += 1
#     return False

# or
# def isPower(n):
#     if n == 1:
#         return True
#     for a in range(2,int(math.sqrt(n))+1):
#         b = 2
#         while (a**b < n):
#             b += 1
#         if a**b == n:
#             return True
#     return False
