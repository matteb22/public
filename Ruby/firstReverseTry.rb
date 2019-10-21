def firstReverseTry(arr)
 if arr.length <= 1
  retur arr
 else
  temp = arr
  o = [temp[-1]] + arr[(1..-2)] + [temp[0]]
  puts o
 end
end

firstReverseTry([5, 4, 3, 2, 1])

# Best solution
# def firstReverseTry(arr)
#     if arr.size > 0
#         arr[0], arr[-1] = arr[-1], arr[0]
#     end
#     arr
# end
