def arrayPacking(a)
  b = []
  # converts n to a 8bit binary
  a.reverse.each { |n| b << "%08b" % n }
  # converts array b to a string, then to i base 2, then string base 10, then to i
  puts b.join.to_i(2).to_s(base=10).to_i
end

arrayPacking([24, 85, 0])

# Best solution
#def arrayPacking(a)
#    a.reverse.reduce(0) { |x, b| (x << 8) + b }
#end

# or, doing just with math
# def arrayPacking(a)
#    m = 0
#    a.length.times do |i|
#        m |= (a[i] << (i * 8))
#    end
#    m
# end
