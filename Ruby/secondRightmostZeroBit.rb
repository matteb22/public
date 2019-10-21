def secondRightmostZeroBit(n)
    puts ~(k = n | n+1) & k+1
end

secondRightmostZeroBit(37)

# Other solution
# def secondRightmostZeroBit(n)
#     return 1 << n.to_s(2).reverse[/1*01*0/].length - 1
# end
# or
# def secondRightmostZeroBit(n)
#     return 2**((0...n.to_s(2).size).find_all{|i| n.to_s(2).chars.reverse[i] == '0'}[1])
# end
# or
# def secondRightmostZeroBit(n)
#     return 2**n.to_s(2).reverse.index('0', n.to_s(2).reverse.index('0')+1)
# end
