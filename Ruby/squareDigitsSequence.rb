def squareDigitsSequence(a)
i = 1
result = [a]
  1000.times do
    i += 1
    a = a.to_s.chars.map! {|x| x =  x.to_i ** 2}.sum
    return i if result.count(a) > 0
    result << a
  end
end

squareDigitsSequence(103)

# Other solutions
# def squareDigitsSequence(a0)
#     z = [a0]
#     loop do
#         a0 = a0.to_s.chars.map(&:to_i).map { |x| x**2 }.reduce(0, :+)
#         return z.size + 1 if z.include?(a0)
#         z << a0
#     end
# end





# Consider a sequence of numbers a0, a1, ..., an, in which an element is equal
# to the sum of squared digits of the previous element. The sequence ends once an
# element that has already been in the sequence appears again.
#
# Given the first element a0, find the length of the sequence.
#
# Example
#
#     For a0 = 16, the output should be
#     squareDigitsSequence(a0) = 9.
#
#     Here's how elements of the sequence are constructed:
#         a0 = 16
#         a1 = 12 + 62 = 37
#         a2 = 32 + 72 = 58
#         a3 = 52 + 82 = 89
#         a4 = 82 + 92 = 145
#         a5 = 12 + 42 + 52 = 42
#         a6 = 42 + 22 = 20
#         a7 = 22 + 02 = 4
#         a8 = 42 = 16, which has already occurred before (a0)
