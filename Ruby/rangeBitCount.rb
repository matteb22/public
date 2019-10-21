def rangeBitCount(a, b)
  o = [""]
  (a..b).each { |i|  o << i.to_s(2) }
  puts o.join.count("1")
end

rangeBitCount(2, 7)
