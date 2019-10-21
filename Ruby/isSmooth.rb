def isSmooth(arr)
  puts arr.size
  if arr.size % 2 == 0 
    arr[0] == arr[-1] && arr[0] == arr[arr.size / 2 ] + arr[arr.size / 2 - 1]
  else
    arr[0] == arr[-1] && arr[0] == arr[(arr.size / 2)]
  end
end

# Best solution
# def isSmooth(arr)
#   s = arr.size
#   middle = s.odd? ? arr[s/2] : arr[s/2] + arr[s/2 -1]
#   arr.first == middle && middle == arr.last
# end
