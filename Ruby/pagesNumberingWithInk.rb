def pagesNumberingWithInk(current, numberOfDigits)
l = current.to_s.length
numberOfDigits -= l
  while numberOfDigits >= l
    return current if numberOfDigits < l
    current += 1
    numberOfDigits -= l
    return current if numberOfDigits < l
    l += +1 if current == 10 || current == 100 || current == 1000


    puts "l is #{l}, current is #{current}, numberOfDigits is #{numberOfDigits}"
#        l = current.to_s.length
  end
  return current
end

pagesNumberingWithInk(8, 4)

# Other solutions
# def pagesNumberingWithInk(current, numberOfDigits)
#     while numberOfDigits > current.to_s.length
#         numberOfDigits -= current.to_s.length
#         if numberOfDigits >= current.to_s.length
#             current += 1
#         end
#     end
#     current
# end

# or
# def pagesNumberingWithInk(current, numberOfDigits)
#   remaining = numberOfDigits - current.digits.count
#   if remaining >= current.digits.count
#     pagesNumberingWithInk(current.next, remaining)
#   else
#     current
#   end
# end
