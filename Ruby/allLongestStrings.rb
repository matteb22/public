def allLongestStrings(inputArray)
  # Sort and array by size
  #c = inputArray.sort_by {|word| word.size}.reverse
  #c = inputArray.sort { |x,y| y <=> x }
  c = inputArray.sort_by!(&:size)
  5.times { c.each  { |x| c.delete(x) if x.size < c.last.size} }
  #puts c.size
  #.delete_if { |x|  x.length < inputArray.max.size  }
  #puts inputArray
  #c.delete_if { |x|  x.length < c.max.length  }
  # c.each do |x|
  #   puts x
  #   puts "#{x.size} and #{(c.max).size}"
  #   o << x if  x.size == c.max.size
  # end
  #c.each_with_index { |x, i| c.delete(i) if x.size < c.last.length  }
  #puts "#{x.size} and #{c.last.length}"
  # inputArray
  # puts "----------- end ---------------"
  puts c
  #puts "--" + c.to_s
end

allLongestStrings(["abcccccccc",
 "eeee",
 "abcd",
 "dcd"])

#  Best solution:
#  def allLongestStrings(inputArray)
#   max = inputArray.map(&:length).max
#   inputArray.select { |x| x.length == max }   <--------
# end
