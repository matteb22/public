def equalPairOfBits(n, m)
  # puts n.to_s(2)
  # puts m.to_s(2)
  # puts ~(n ^ m)
  #   puts 2 ** (n.to_s(2).to_i - m.to_s(2).to_i).abs.length
  # puts 2 ** ((n ^ m).to_s(base=2).index("1"))
  # puts ('%32d' % (n ^ m)).to_i('%32d')
  # puts 2 ** ('%32d' % ((n ^ m).to_s(base=2).to_i).to_s.index("1"))
  puts ~(n ^ m) & ((n ^ m) + 1)
end

equalPairOfBits(28, 27)

# Other solutions
# def equalPairOfBits(n, m)
#     return 2**(('%032b' % n).reverse.chars.map.with_index{|x,i| x == ('%032b' % m).reverse.chars[i] ? i : x}-['0']-['1'])[0]
# end
# or
# def equalPairOfBits(n, m)
#     return 2**(0..32).to_a.index { |i| (m & (1 << i)) == (n & (1 << i)) }
# end
