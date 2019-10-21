def arithmeticExpression(a, b, c)
 return true if a * b == c || a + b == c || a - b == c || a / b.to_f == c
 else false
end

arithmeticExpression(8, 5, 2)

# best solution
#def arithmeticExpression(a, b, c)
#    [a + b, a * b, a - b, a.to_f / b].include?(c)
#end

# or
#def arithmeticExpression(a, b, c)
#    [:+,:-,:*,:/].each{|s| return true if a.send(s,b.to_f)==c }
#    false
#end
