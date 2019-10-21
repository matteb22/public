def rectangleRotation(a, b):
    r2=2**.5
    ax=int(a/r2)
    bx=int(b/r2)
    y=ax*bx+(ax+1)*(bx+1)
    y-= 0 if y%2 else 1
    return y

# Other solutions
# def rectangleRotation(a, b):
#     a = int(a//math.sqrt(2))
#     b = int(b//math.sqrt(2))
#
#     return odd(a ) * odd(b) + even(a ) * even(b )
#
# def odd(a):
#     a = int(a)
#     return 2 * (a // 2 + a % 2)
#
# def even(a):
#     a = int(a)
#     return 2 * (a // 2 ) + 1

# or
# def rectangleRotation(a, b):
#     [m, n] = [int(math.floor(x / math.sqrt(2))) for x in (a, b)]
#     return m * n + (m + 1) * (n + 1) - (m + n) % 2
