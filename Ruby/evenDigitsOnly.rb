def evenDigitsOnly(n)
  n.to_s.chars.each {|i| puts i ; return false if i.to_i % 2 != 0}
end

# Other solution
# def evenDigitsOnly(n)
#   !n.to_s.chars.map {|c| c.to_i.even?}.include?(false)
# end
