def rectangleRotation(a, b)
  ai = (a/Math.sqrt(2))/2
  b1 = (b/Math.sqrt(2))/2
  r1 = [ai.floor*2 + 1, b1.floor*2 + 1]
  r2 = []

  ai - ai.floor < 0.5 ? r2[0] = r1[0] - 1 : r2[0] = r1[0] + 1
  b1 - b1.floor < 0.5 ? r2[1] = r1[1] - 1 : r2[1] = r1[1] + 1

  p r1.inject(:*) + r2.inject(:*)
end

rectangleRotation(30, 2)

# Best solutions
# def rectangleRotation(a, b)
#     c = 1.414
#     a = (a / c).to_i
#     b = (b / c).to_i
#     c = ~(a ^ b) & 1
#
#     return 2 * a * b + a + b + c
# end

# or
