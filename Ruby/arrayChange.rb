def arrayChange(inputArray)
add, c = 0, 0
(1...(inputArray.length)).each do |i|
  add = inputArray[i].to_i - inputArray[i - 1].to_i
  if add <= 0
    inputArray[i] = inputArray[i].to_i + (add.abs + 1)
    c += add.abs + 1
  end
end
return c
end

arrayChange([-1000, 0, -2, 0])

# best solution
# def arrayChange(a)
#     moves = 0
#     a.reduce do |a,e|
#         moves += a + 1 - e if e <= a
#         e > a ? e : a + 1
#     end
#     moves
# end
