def rotateImage(a)
  i = a.transpose
  a[0].count.times { |x| i[x] = i[x].reverse }
  puts i
end

a = [[1,2,3],
 [4,5,6],
 [7,8,9]]

rotateImage(a)

# best solution
# def rotateImage(a)
#     a.transpose.map(&:reverse)
# end

# others
# def rotateImage(a)
#   a.reverse!
#   first = a.shift
#   first.zip *a
# end


# Note: Try to solve this task in-place (with O(1) additional memory), since this is what you'll be asked to do during an interview.
#
# You are given an n x n 2D matrix that represents an a. Rotate the a by 90 degrees (clockwise).
#
# Example
#
# For
#
# a = [[1, 2, 3],
#      [4, 5, 6],
#      [7, 8, 9]]
#
# the output should be
#
# rotatea(a) =
#     [[7, 4, 1],
#      [8, 5, 2],
#      [9, 6, 3]]
#
# Input/Output
#
#     [execution time limit] 4 seconds (rb)
#
#     [input] array.array.integer a
#
#     Guaranteed constraints:
#     1 ≤ a.length ≤ 100,
#     a[i].length = a.length,
#     1 ≤ a[i][j] ≤ 104.
#
#     [output] array.array.integer
#
# [Ruby] Syntax Tips
#
# # Prints help message to the console
# # Returns a string
# def helloWorld(name)
#     print "This prints to the console when you Run Tests"
#     return "Hello, " + name
# end
