def weakNumbers(n):
    import functools
    @functools.lru_cache(maxsize=None)

    def get_div_cnt(n):
        return sum(n%d==0 for d in range(1,n))
    def get_weakness(n):
        return sum(get_div_cnt(i) > get_div_cnt(n) for i in range(1,n))

    x = sorted(map(get_weakness, range(1, n+1)))
    return [x[-1], x.count(x[-1])]


# other solutions
# def weakNumbers(n)
#   d, w = [], []
#
#   (1..n).select do |i|
#     d << (1..i).select { |n| i % n == 0}.count
#   end
#
#   (0...d.length).each do |l|
#       i = 0
#       if d[0..l].max == d[0..l].last
#         w << 0
#       else
#         (0...l).each do |k|
#           i += 1 if d[k] > d[l]
#         end
#         w << i
#       end
#   end
#
#   [w.max, w.count(w.max)]
# end
