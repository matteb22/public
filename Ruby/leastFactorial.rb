def leastFactorial(n)
  (1..5).each do |x|
    puts facto(x) if facto(x) >= n
  end
end

def facto(k)
  (1..k).reduce(1, :*)
end

leastFactorial(17)

# Other solution
# def leastFactorial(n)
#   k = 1
#   (1..5).each do |i|
#     k *= i
#     return k if k >= n
#   end
# end
