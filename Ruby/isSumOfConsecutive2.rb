def isSumOfConsecutive2(n)
  number, x, y = 0, 0, 1
  sum = x
  while (x < n)
      while (y < n)
            sum += y
            if sum == n then
               number += 1
            end
            y += 1
      end
      x += 1 ;  y = x + 1 ; sum = 0
    end
    return number
end

isSumOfConsecutive2(9)


# Best solutions
# def isSumOfConsecutive2(n)
#     (2..n).count { |k|
#         (n - k * (k - 1) / 2) % k == 0 && k * (k - 1) / 2 < n
#     }
# end

# or
# def isSumOfConsecutive2(n)
#   return 0 if n == 1
#   results = 0
#   a = (1..(n/2.0).ceil).to_a
#   a.each_with_index do |i, index_one|
#     a.each_with_index do |ii, index_two|
#       results +=1 if a[index_one..index_two].reduce(:+) == n
#     end
#   end
#   results
# end
