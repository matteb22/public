def isLucky(n)
# Returns the array including the digits extracted by place-value notation with
# radix base of int.
  n.digits.slice(0, (n.digits.size / 2 )).sum == n.digits.slice((n.digits.size / 2 ), n.digits.size).sum
end

# Best solution
# def isLucky(n)
#   str = n.to_s.split('').map(&:to_i)
#   str.shift(str.size / 2).inject(&:+) == str.inject(&:+)
# end

isLucky(239017)
