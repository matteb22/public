def increaseNumberRoundness(n)
if !/0/.match(n.to_s) || /^[1-9]+0+$/.match(n.to_s) then return false else return true
end

increaseNumberRoundness(902200100)

# No zeros: 1111, returns false.
# All zeros in the tail: 1100, returns false. (A single zero falls into this
# category).
# At least one zero in a place other than the tail: 1011 or 1010, returns true.

# Other solution:
# def increaseNumberRoundness(n)
#     !!(n.to_s=~/0[^0]/)
# end
#  or
#  def increaseNumberRoundness(n)
#      n/=10 while n%10==0
#      n.to_s.index(?0) ? true : false
#  end
