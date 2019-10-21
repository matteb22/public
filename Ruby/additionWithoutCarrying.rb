def additionWithoutCarrying(param1, param2)
#puts param1.to_s.length
#o = []
a1, a2, o = [], [], []
l = [param1.to_s.length, param2.to_s.length].max
param1.to_s.chars.each {|i| a1 << i}
param2.to_s.chars.each {|i| a2 << i}
  (0...l).each do |i|
    o[i] = (a1.reverse[i].to_i + a2.reverse[i].to_i) % 10
  end
#puts "a1: #{a1}, a2: #{a2}, o: #{o.reverse}"
puts o.reverse.join.to_i
end

additionWithoutCarrying(456, 1734)

# Other solutions
#def additionWithoutCarrying(param1, param2)
#    n=0
#    t=1
#    while param1 > 0 || param2 > 0
#        n += t*((param1+param2)%10)
#        param1/=10
#        param2/=10
#        t*=10
#    end
#    n
#end
# or
#def additionWithoutCarrying(param1, param2)
#    z = []
#    while param1 > 0 || param2 > 0
#        z << (param1 + param2) % 10
#        param1 /= 10
#        param2 /= 10
#    end
# Join converts an array to a string
#    z.reverse.join.to_i
#end
