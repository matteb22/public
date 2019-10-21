def commonCharacterCount(s1, s2)
  i = 0
  # s1.chars converts the string into an array
  # & gets the union (common objects) between 2 arrays
  (s1.chars & s2.chars).each {|x| i += [s1.count(x), s2.count(x)].min }
  i
end

# Best solution
# def commonCharacterCount(s1, s2)
#   s1.each_char.count { |c| s2.include?(c) && s2[c] = "" }
# end

commonCharacterCount("zzzz", "zzzzzzz")
