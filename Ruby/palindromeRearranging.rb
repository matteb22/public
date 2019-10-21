def palindromeRearranging(inputString)
  c = 0
  n = []
  inputString.chars.uniq.each {|x| inputString.count(x)  % 2 == 0}
  puts "n is #{inputString.chars}"
  # n.each {|i| c += 1 if i % 2 != 0}
  puts "true" if c <= 1
end

palindromeRearranging("aabb")

# Best solution
# def palindromeRearranging(w)
#     w.split("").uniq.map{|x| w.count(x)}.count(&:odd?) < 2
# end
