def removeArrayPart(inputArray, l, r)
  if l == 0
    return inputArray[(r + 1..-1)]
  else
  return inputArray[(0..l -1)] + inputArray[(r + 1..-1)]
  end
end

# Best solution
#def removeArrayPart(inputArray, l, r)
#    inputArray.slice!(l, r-l + 1)
#    inputArray
#end
