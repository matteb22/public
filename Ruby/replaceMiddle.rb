def replaceMiddle(arr)
  if arr.size == 2
    [arr[arr.size / 2 -1] + arr[arr.size / 2]]
  elsif arr.size.even?
    middle = [arr[arr.size / 2 -1] + arr[arr.size / 2]]
    arr[0..(arr.size / 2 - 2)] + middle + arr[(arr.size / 2 + 1)..-1]
  else
    arr
  end
end

# Best solution
# def replaceMiddle(arr)
#     if arr.length%2 == 0
#         mid = arr.length/2
#         arr[mid-1] += arr.delete_at(mid)
#     end
#     arr
# end

# def replaceMiddle(arr)
#     len = arr.length
#     if len.even?
#         arr[len/2 - 1] += arr[len/2]
#         arr.delete_at(len/2)
#     end
#     arr
# end
