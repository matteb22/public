def weakNumbers(n)
  d, w = [], []

  (1..n).select do |i|
    d << (1..i).select { |n| i % n == 0}.count
  end

  (0...d.length).each do |l|
      i = 0
      if d[0..l].max == d[0..l].last
        w << 0
      else
        (0...l).each do |k|
          i += 1 if d[k] > d[l]
        end
        w << i
      end
  end

  p [w.max, w.count(w.max)]
end

weakNumbers(9)

# Other solutions
# def weakNumbers(n)
#     divisors = []
#     weakness = []
#     for i in 0..n - 1
#         divisors[i] = numberOfDivisors(i + 1)
#         weakness[i] = divisors.inject(0) do |weakness, x|
#             (x > divisors[i]) ? weakness +1 : weakness
#         end
#     end
#     maxWeakness = weakness.max
#     [maxWeakness, weakness.count(maxWeakness)]
#
# end
#
# def numberOfDivisors(n)
#     count = 0
#     divisor = []
#     for i in 1..Math.sqrt(n)
#         if n % i == 0
#             count += n / i == i ? 1 : 2
#         end
#     end
#     count
# end

# or
# def divisors(num)
#    (1..num).select { |n| num % n == 0}.count
# end
# def weakNumbers(n)
#     m = []
#     k = [0]
#     (1..n).map{|x| m << divisors(x)}
#     (1...m.size).each do |i|
#         if m[i - 1] > m[i]
#             l = m[0..i-1].select{|x| x > m[i]}.size
#             k << l
#         else
#             k << 0
#         end
#     end
#     a = k.max
#     b = k.select{|x| x == a}.size
#     [a, b]
# end

#     1: d(1) = 1, weakness(1) = 0;
#     2: d(2) = 2, weakness(2) = 0;
#     3: d(3) = 2, weakness(3) = 0;
#     4: d(4) = 3, weakness(4) = 0;
#     5: d(5) = 2, weakness(5) = 1;
#     6: d(6) = 4, weakness(6) = 0;
#     7: d(7) = 2, weakness(7) = 2;
#     8: d(8) = 4, weakness(8) = 0;
#     9: d(9) = 3, weakness(9) = 2.
###############################################################################

# We define the weakness of number x as the number of positive integers smaller
# than x that have more divisors than x.
#
# It follows that the weaker the number, the greater overall weakness it has.
# For the given integer n, you need to answer two questions:
#
#     what is the weakness of the weakest numbers in the range [1, n]?
#     how many numbers in the range [1, n] have this weakness?
#
# Return the answer as an array of two elements, where the first element is the
#  answer to the first question, and the second element is the answer to the
#  second question.
#
# Example
#
# For n = 9, the output should be
# weakNumbers(n) = [2, 2].
#
# Here are the number of divisors and the specific weakness of each number
# in range [1, 9]:
#
#     1: d(1) = 1, weakness(1) = 0;
#     2: d(2) = 2, weakness(2) = 0;
#     3: d(3) = 2, weakness(3) = 0;
#     4: d(4) = 3, weakness(4) = 0;
#     5: d(5) = 2, weakness(5) = 1;
#     6: d(6) = 4, weakness(6) = 0;
#     7: d(7) = 2, weakness(7) = 2;
#     8: d(8) = 4, weakness(8) = 0;
#     9: d(9) = 3, weakness(9) = 2.
#
# As you can see, the maximal weakness is 2, and there are 2 numbers with
# that weakness level.

###############################################################################

# first you need to make an array D,which consists the number
# of divisors of each number in [1:n],
# for example,n=9,D = [1,2,2,3,2,4,2,4,3].second,
# you need to make an array W,using the data in D.W c
# onsists the weakness of each number
# in [1:n],n = 9, W = [0,0,0,0,1,0,2,0,2]

# alternatively you can just keep an array with a count
# of the numbers with X divisors.

# Answer as array: [max(w), w.count(max(w))], all for weakness().
# Example: d[1] = len([1]), d[2] = len([1, 2]), d[3] = len([1, 3]), d[4] = len([1, 2, 4]),
#  d[5] = len([1, 5]), d[6] = len([1, 2, 3, 6]), d[7] = len([1, 7]).
# w[x] = sum cases where d[x] > d[:x].

# If you consider the given example, say n = 5
# 1: d(1) = 1, weakness(1) = 0;
# 2: d(2) = 2, weakness(2) = 0;
# 3: d(3) = 2, weakness(3) = 0;
# 4: d(4) = 3, weakness(4) = 0;
# 5: d(5) = 2, weakness(5) = 1;
#
# For weakness(5), the weakness is 1, because
# "No of divisors for 4 = 3", which is greater than "No of divisors for 5 = 2"
#
# So, you will check from 4 to 1, to see if any of them "No. Of divisors"
# is greater than "this", where "this" is the current integer in series of [1 to n]

# First create a method/function #1 which will return the number of divisors.
# Second, create a method which will return the weakness (it will use method #1 of course).
# Third... no reason to describe what to do further i guess...
