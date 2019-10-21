def alphabeticShift(inputString)
  l = []
  o = []

  ('a'..'z').each {|x| l << x}
  a = inputString.split("")

  a.each do |i|
    index1 = l.find_index(i)
    i == "z" ? o << "a" : o << l[index1 + 1]
  end
  p o.join("")
end

alphabeticShift("crazy")

# Other solutions
# def alphabeticShift(inputString)
#     return inputString = inputString.tr("a-yz","b-za")
# end

# or
# def alphabeticShift(inputString)
#     output = ""
#     inputString.chars.each{|x| output << ((x.ord + 1 - 97) % 26 + 97).chr}
#     output
# end

# or
# def alphabeticShift(inputString)
#     a = ("a".."z").to_a
#     0.upto(inputString.length - 1) do |i|
#         if inputString[i] == 'z'
#             inputString[i] = 'a'
#         else
#             inputString[i] = a[a.index(inputString[i]) + 1]
#         end
#     end
#     inputString
# end
