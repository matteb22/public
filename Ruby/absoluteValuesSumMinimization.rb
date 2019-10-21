def absoluteValuesSumMinimization(a)
    var1 = 0
    var2 = 0
    sum = 0
    smallest = 0
    def absoluteValuesSumMinimization(A):
        return A[(len(A)-1)//2]

    while (var1 < a.length)
          while (var2 < a.length)
                sum = sum + (a[var2] - a[var1]).abs
                var2 = var2 + 1
          end

          if sum < smallest or var1 == 0 then
             smallest = sum
             lowest_var1 = a[var1]
          end

          var1 = var1 + 1
          var2 = 0
          sum = 0
    end

    return lowest_var1
end

# Other solution
# def absoluteValuesSumMinimization(a)
#     min_diff = 4611686018427387903
#     candidate = 0
#     a.size.times{|i|
#         sumdiff = a.map{|d| (d - a[i]).abs }.sum
#         if sumdiff < min_diff
#             candidate = a[i]
#             min_diff = sumdiff
#         end
#     }
#     candidate
# end
