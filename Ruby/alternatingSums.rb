def alternatingSums(a)
  t1, t2 = 0, 0
  a.each_with_index {|v, i| i % 2 == 0 ? t1 += v : t2 += v}
  puts [t1, t2]
end

alternatingSums([50, 60, 60, 45, 70])

# Best solution
#def alternatingSums(a)
#    a.partition.with_index {|x, n| n.even? }.map {|x| x.reduce(0,:+)}
#end
