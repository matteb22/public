def areSimilar(a, b)
  # reverse_each is necesarry to loop from the last object of the array to the first
  # since we are removing object
  a.length.times.reverse_each { |i| a.delete_at(i) && b.delete_at(i) if a[i] == b[i] }
  a.length <= 2 && a.sort == b.sort
end

areSimilar([832, 998, 148, 570, 533, 561, 894, 147, 455, 279],
           [832, 998, 148, 570, 533, 561, 455, 147, 894, 279])

# best solutions:
# def areSimilar(a, b)
#   a.sort == b.sort and a.each_with_index.count{|n,i| b[i] != n } < 3
# end
# or
# def areSimilar(a, b)
#     return (0...a.size).count{|i| a[i] != b[i]} <= 2 if a.sort == b.sort
#     false
# end

           #return true if a == b
           #puts aa
          #  puts "aa is #{aa}"
          #  puts "bb is #{bb}"

#  puts a.length
#  #(0...b.length).each { |i|
#  i = 0
#  a.delete_if do |i| a[i] == b[i]
#   #  puts "i es #{i}, c de i es #{b[i]}, d de i es  #{b[i]}"
#   #   c.delete_at(i) if a[i] == b[i]
#   #   #  c.delete_at(i)
#   #   #  d.delete_at(i)
#  end
#  b.each_with_index do |v, i|
#    puts "i es #{i}, c de i es #{b[i]}, d de i es  #{b[i]}"
#     d.delete_at(i) if a[i] == b[i]
#  end
#  puts "Array a is #{c}"
#  puts "Array d is #{d}"
#  puts " d length is #{d.length}"
# if c.length <= 2 && c.sort == d.sort
#   puts "true"
# else puts "false"
# end
#end



# def areSimilar(a, b)
#  return true if  a == b
#  #puts c
#  puts a.sum
#  puts b.sum
#  i = 0
#  0...a.length {|x| i += 1 if a[x] == b[x]}
#  return false if i == 0
#  if ((a - b) == [] && a.sum == b.sum )
#   return true
#  else false
#  end
# end
