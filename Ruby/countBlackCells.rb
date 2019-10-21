# def countBlackCells(n, m)
#     m,n = n,m if n>m
# count = 0
#     (0...m).each do |i|
#         s = (i*n.to_f/?).ceil
#         e = ((i+?)*n.to_f/m).?????
#         count+= e-s+?
#     end
#     count-2
# end

def countBlackCells(n, m)
    if n == m
        puts n + 2*(n-1)
    elsif n == 1 || m == 1
        puts n * m
    else
        a = n.gcd(m)
        puts n + m + (a-1) * 2 - a
    end
end

countBlackCells(3, 4)
