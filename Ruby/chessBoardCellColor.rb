def chessBoardCellColor(cell1, cell2)
  n = (1..8)
  l = ("A".."H")
  a = ((l.find_index(cell1[0].upcase)) + 1 + cell1[1].to_i).even?
  b = ((l.find_index(cell2[0].upcase)) + 1 + cell2[1].to_i).even?
  return false if a != b
  true
end

chessBoardCellColor("A2", "B3")



# Given two cells on the standard chess board, determine whether they have the same color or not.
# Example
#     For cell1 = "A1" and cell2 = "C3", the output should be
#     chessBoardCellColor(cell1, cell2) = true.
#
#     For cell1 = "A1" and cell2 = "H3", the output should be
#     chessBoardCellColor(cell1, cell2) = false.
# Input/Output
#     [execution time limit] 4 seconds (rb)
#     [input] string cell1
#     [input] string cell2
#     [output] boolean
#         true if both cells have the same color, false otherwise.

# Other solutions
# def chessBoardCellColor(cell1, cell2)
#     x1, y1 = [cell1[0].ord - "A".ord, cell1[1].to_i]
#     x2, y2 = [cell2[0].ord - "A".ord, cell2[1].to_i]
#     (x1 + y1) % 2 == (x2 + y2) % 2
# end

# or
# def chessBoardCellColor(cell1, cell2)
#     get_colour(cell1) == get_colour(cell2)
# end
#
# def get_colour(cell)
#     odd_letter = "ACEG".include? cell[0]
#     odd_number = "1357".include? cell[1]
#     odd_letter == odd_number ? "dark" : "light"
# end
