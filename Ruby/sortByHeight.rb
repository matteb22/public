def sortByHeight(a)
  # Sort s and remove all object with value -1
  s = a.sort - [-1]
  # This is s [150, 160, 170, 180, 190]
  # Use the insert method to insert an array object at i index with -1 value
  a.each_index { |i|  s.insert(i, -1) if a[i] == -1  }
  s
end
sortByHeight([-1, 150, 190, 170, -1, -1, 160, 180])

# Best solution
# def sortByHeight(a)
#     heights = a.select{|people| people > 0}.sort!
#     a.map {|pos| pos > 0 ? heights.shift : -1}
# end
