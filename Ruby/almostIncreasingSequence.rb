#require 'enumerator'
def almostIncreasingSequence(sequence)
  return false if sequence.each_cons(2).count { |a, b| a >= b } > 1
  return false if sequence.each_cons(3).count { |a, b, c| (a >= b && a >= c) || (a >= b && b >= c) || (a >= c && b >= c)} > 1
  return true
end

almostIncreasingSequence([1, 3, 2, 1])

# split to convert string to array:
# >> "1,2,3,4".split(",")
# => ["1", "2", "3", "4"]
# or for integers:
# >> "1,2,3,4".split(",").map { |s| s.to_i }
# => [1, 2, 3, 4]
