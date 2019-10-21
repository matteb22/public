def countSumOfTwoRepresentations2(n, l, r)
     minA = [l,n-r].max
     maxA = [r,(n/2)].min
     puts [maxA-minA+1,0].max
end

countSumOfTwoRepresentations2(6, 3, 3)

# Ohter solutions
# def countSumOfTwoRepresentations2(n, l, r)
#     (l..r).count { |a|
#         (l..r) === n - a && a <= n - a
#     }
# end
# or
# def countSumOfTwoRepresentations2(n, l, r)
#     ways = 0
#     (l..r).each do |a|
#         if ((n - a).between?(a, r))
#             ways += 1
#         end
#     end
#     return ways
# end
