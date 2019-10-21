def minesweeper(matrix)
  l, h = matrix[0].count, matrix.size
#creates a deep copy of the nested array image
#creates a matrix of 0 the same size as matrix
# (0...l).each do |i|
#   a[i] = matrix.map {|x| x = 0}
# end

# create zero matrix (l + 2 x h + 2)
  zero = []
  row = []
  (l + 2).times { row << 0 }
  (h + 2).times { zero << row }

# add border of zeros to matrix
  matrix.each {|x| x.unshift(0) ; x.push(0)}
  matrix.unshift(row)
  matrix.push(row)
  p matrix

# Suma
matrix.each_with_index do |_v, idx|
  matrix[idx].each_with_index do |v2, idx2|
    #puts matrix[idx][idx2]
      if matrix[idx][idx2] == true
        puts "Encontrado true en matrix #{idx}, #{idx2}"
        puts "idx2 +1 is: #{zero[idx][(idx2 + 1)]} and will be increased"
        zero[idx][(idx2 + 1)] += 1
        puts "idx2 +1 is: #{zero[idx][(idx2 + 1)]}"
        #p zero

        zero[(idx +1)][(idx2 +1)] += 1
        zero[(idx -1)][(idx2 +1)] += 1
        zero[idx][(idx2 -1)] += 1
        zero[(idx +1)][(idx2 -1)] += 1
        zero[(idx -1)][(idx2 -1)] += 1
        zero[(idx +1)][idx2] += 1
        zero[(idx -1)][idx2] += 1
      end
  end
end

# remove border of zeros to matrix
  #puts zero
  zero.delete_at(0)
  zero.delete_at(-1)
  #p zero
  zero.each do |x|
   p zero
  x.pop
  p zero
  end   # to be fixed

p zero
end

minesweeper([[true, false, false], [false, false, false], [false, false, false]])

# Other solutions:
# def minesweeper(matrix)
#     width = matrix[0].length
#     height = matrix.length
#     ans = []
#     height.times{|h| matrix[h] = [false] + matrix[h] + [false]}
#     matrix.unshift [false]*(width+2)
#     matrix.push [false]*(width+2)
#     pp matrix
#     (1..height).each{|h|
#         row = []
#         (1..width).each{|w|
#             sum = (-1..1).map{|i|
#                     (-1..1).map{|j|
#                         next if i == 0 and j == 0
#                         matrix[h+j][w+i]
#                     }.tap{|d| p d}.count(true)
#                   }.sum
#             row << sum
#
#         }
#         ans << row
#     }
#     ans
# end

# or
# def minesweeper(matrix)
#   matrix.each_with_index.map do |row, x|
#     row.each_with_index.map do |cell, y|
#       all_cells = []
#       for i in x-1..x+1
#         for j in y-1..y+1
#           if i >= 0 and j >= 0
#             unless i == x and j == y
#               all_cells << [i,j]
#             end
#           end
#         end
#       end
#
#       puts "=="
#       all_cells
#         .map {| coords| matrix.dig(*coords) }
#         .map {|c| c ? 1 : 0 }
#         .map {|c| puts c; c}
#         .sum
#     end
#   end
# end
