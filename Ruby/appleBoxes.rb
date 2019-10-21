def appleBoxes(k)
  r, y = 0, 0
  (1..k).each {|x| x % 2 == 0 ? r += x*x : y += x*x }
  r - y
end

appleBoxes(5)

# Other solutions
#def appleBoxes(k)
#    (1..k).map { |m|
#        m.even? ? m * m : -(m * m)
#    }.reduce(0, :+)
#end
