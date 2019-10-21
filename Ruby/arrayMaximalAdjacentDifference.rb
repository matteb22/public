def arrayMaximalAdjacentDifference(a)
  diff = 0
  (1...a.length).each {|x| c = (a[x] - a[x - 1]).abs ; diff = c if c > diff }
  puts diff
end

arrayMaximalAdjacentDifference([2, 4, 1, 0])

# Other solutions
# def arrayMaximalAdjacentDifference a
#     (0...a.size-1).map{|i| (a[i]-a[i+1]).abs}.max
# end
# or
# def arrayMaximalAdjacentDifference(a)
#     a.each_cons(2).to_a.map { |x| x.reduce(:-).abs }.max
# end
# or
# def arrayMaximalAdjacentDifference(inputArray)
#   result = 0
#   inputArray.inject do |item1, item2|
#     tmp = (item1 - item2).abs
#     result = tmp if tmp > result
#     item2
#   end
#   result
# end
