def avoidObstacles(str)
  l = []
  # from 1 to the max obstacle, look for a number which all obstacles can not be divided by.
  (1..str.max.to_i).each {|x| l << x if str.all? {|o| o % x != 0 } }
  l == [] ? (str.max.to_i + 1) : l.min
end

avoidObstacles([1, 4, 10, 6, 2])

# 1 line solution:
# def avoidObstacles(a)
#   (1..40).each { |n| return n if a.all? { |x| x % n != 0 } }
# end
# or
# def avoidObstacles(arr)
#     m = arr.max + 1
#     (1..m).find {|i| (i..m).step(i).none? {|j| arr.include?(j)}}
# end
