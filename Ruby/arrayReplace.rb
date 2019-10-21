def arrayReplace(inputArray, elemToReplace, substitutionElem)
 inputArray.each_with_index do |x,y|
    inputArray[y] = substitutionElem if x == elemToReplace
  end
end

# best solution
# def arrayReplace(arr, el_to_replace, substitution_el)
#   arr.map{|el| el == el_to_replace ? substitution_el : el}
# end
