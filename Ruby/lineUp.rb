def lineUp(commands)
x, o = 0, 0
  commands.chars.each do |i|
    x += 1 if i == "L"
    x -= 1 if i == "R"
    x += 2 if i == "A"
    o += 1 if x % 2 == 0
  end
puts o
end

  # The number of students is irrelevant. Use X starting with 0. Add 1 for left,
  # Extract 1 for right, Add 2 for A.
  # Check if X is even. If even increase count.

lineUp("LLARL")

# Other solutions
# def lineUp(commands)
#     facing = true
#     commands.chars.select { |c|
#         facing = !facing unless c == 'A'
#         facing
#     }.length
# end
# or
# def lineUp(commands)
#   correct = true
#   counter = 0
#   commands.each_char do |char|
#     correct = !correct if "LR".include? char
#     counter += 1 if correct
#   end
#   return counter
# end
