def constructSubmatrix(matrix, rowsToDelete, columnsToDelete)
  rowsToDelete.each {|x| matrix.delete_at(x)}
  matrix.each do |i|
    columnsToDelete.reverse.each {|y| i.delete_at(y)}
  end
  puts matrix
end

constructSubmatrix([[1,2,3], [1,2,3], [1,2,3]], [0], [0])
