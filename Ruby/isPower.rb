def isPower(n)
  a = []
  (1..20).each {|i| a  << i * i  }
  (2..7).each {|i| a  << i * i * i }
  puts a
  puts a.include?(n)
  end

isPower(100

# Determine if the given number is a power of some non-negative integer.
#
# Example
#
#     For n = 125, the output should be
#     isPower(n) = true;
#     For n = 72, the output should be
#     isPower(n) = false.
#
# Input/Output
#
#     [execution time limit] 4 seconds (rb)
#
#     [input] integer n
#
#     A positive integer.
#
#     Guaranteed constraints:
#     1 ≤ n ≤ 400.
#
#     [output] boolean
