def differentRightmostBit(n, m)
    return 2 ** ((n-m).abs.to_s(2).length - (n-m).abs.to_s(2).rindex("1") - 1)
end

differentRightmostBit(1073741823, 1071513599)

# Other solutions
# def differentRightmostBit(n, m)
#     return (n ^ m) & -(n ^ m)
# end
# or
# def differentRightmostBit(n, m)
#     return (k = n^m)& -k
# end
# or
# def differentRightmostBit(n, m)
#     return 2 ** (n ^ m).to_s(2).reverse.index("1")
# end
