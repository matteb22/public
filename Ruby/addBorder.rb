def addBorder(picture)
  l = picture[0].length
  n = []
  picture.each {|x| n << "*" + x + "*"}
  n.insert(0, "*" * (l + 2))
  n.insert(-1, "*" * (l + 2))
  #puts l
  puts n
end

addBorder(["abc",
 "ded"])

 # Best solution
 #ef addBorder p
#    c = '*' * (p.first.size + 2)
#    [c]+p.map{|s| "*#{s}*"}+[c]
#end
