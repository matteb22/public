def matrixElementsSum(matrix)
  c = matrix.flatten
  l = matrix[0].length
  tot = c.sum
  (0...(c.length)).each  { |x| c[x + l] = 0 if c[x] == 0 && !c[x + l].nil?}
  (0...(c.length)).each  { |x| tot -=  c[x + l] if c[x] == 0 && !c[x + l].nil?}
  tot = c.sum
puts tot
  return tot
  end

matrixElementsSum([[1,1,1,0],
 [0,5,0,1],
 [2,1,3,10]])
