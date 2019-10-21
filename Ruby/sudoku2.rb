def sudoku2(grid)
# Check lines
grid.each do |x|
  return false if (x - ['.']).length != (x - ['.']).uniq.length
end
# Check columns
grid.transpose.each do |x|
  return false if (x - ['.']).length != (x - ['.']).uniq.length
end
# Check subgrid
(0..8).step(3).each do |i|
  subgrid = grid[i][0..2] + grid[i+1][0..2] + grid[i+2][0..2]
  line = (subgrid.group_by{ |e| e }.select { |k, v| v.size > 1}.keys - ["."])
  return false if line.size > 0
end

(0..8).step(3).each do |i|
  subgrid = grid[i][3..5] + grid[i+1][3..5] + grid[i+2][3..5]
  line = (subgrid.group_by{ |e| e }.select { |k, v| v.size > 1}.keys - ["."])
  return false if line.size > 0
end

(0..8).step(3).each do |i|
  subgrid = grid[i][6..8] + grid[i+1][6..8] + grid[i+2][6..8]
  line = (subgrid.group_by{ |e| e }.select { |k, v| v.size > 1}.keys - ["."])
  return false if line.size > 0
end

return true

end


grid = [[".",".",".",".","2",".",".","9","."],
        [".",".",".",".","6",".",".",".","."],
        ["7","1",".",".","9","5",".",".","."],
        [".","7",".",".",".",".",".",".","."],
        [".",".",".",".","8","3",".",".","."],
        [".",".","8",".",".","7",".","6","."],
        [".",".",".",".",".","2",".",".","."],
        [".","1",".","2",".",".",".",".","."],
        [".","2",".",".","3",".",".",".","."]]

sudoku2(grid)


# Other Solution
