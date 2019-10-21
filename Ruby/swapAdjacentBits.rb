def swapAdjacentBits(n)
    return (byte = 0x55555555; ((n & byte) << 1) + ((n & (byte << 1)) >> 1))
end

swapAdjacentBits(13)

# Other solution
# def swapAdjacentBits(n)
#     return n.to_s(2).prepend(n.to_s(2).length < 8 ? "0" * (8 - n.to_s(2).length) : n.to_s(2).length % 2 == 0 ? "" : "0").scan(/../).map { |pair| pair == "01" || pair == "10" ? pair.reverse : pair }.join.to_i(2)
# end
# or
# def swapAdjacentBits(n)
#     return n.to_s(2).reverse.chars.each_slice(2).map {|p| "#{p[1]||0}#{p[0]}"}.join.reverse.to_i(2)
# end
