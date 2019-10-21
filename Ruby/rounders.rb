def rounders(value)
    s=value.to_s.split('').map{|x| x.to_i}
    i = s.size() - 1
    while i > 0
        if s[i] >= 5
            s[i-1] += 1
        end
        s[i] = 0
        i-=1
    end
    s.join.to_i
end

rounders(15)

# Other solution
#def rounders(value)
#    size = value.to_s.size
#    (1..size-1).each do |i|
#        value = value.round(-i)
#    end
#    value
#end
