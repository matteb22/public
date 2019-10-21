# def killKthBit(n, k)
#     puts n.to_s(2).scan(/\?/).reverse.map.with_index{|v,i| v = (i == k - 1) ? 0 : v}
#     #return n.to_s(2).scan(/\?/).reverse.map.with_index{|?,i| v = (i == ? - 1) ? 0 : v}.???????.join.to_i(2)
# end

def killKthBit(n, k)
    puts (n[k-1] == 0 ? n : n-(2**(k-1)))
end

killKthBit(37, 3)
