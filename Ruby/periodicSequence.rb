#
# def periodicSequence(s0, a, b, m)
#
# end


# solution
# function periodicSequence(S0, a, b, m) {
#   let result = [];
#   let currentValue = S0;
#
#   for (var i = 0; i < m; i++) {
#     occurrence.push(-1);
#   }
#   occurrence[S0] = 0;
#   for (var i = 1;; i++) {
#     currentValue = (a * currentValue + b) % m;
#     if (occurrence[currentValue] !== -1) {
#       return i - occurrence[currentValue];
#     }
#     occurrence[currentValue] = i;
#   }
# }


def periodicSequence(s0, a, b, m)
  result = []
  current = s0


  (0...m).each do |i|
    result.push(-1)
  end

  result[s0] = 0

  i = 1

  while i
    current = (a * current + b) % m
    puts  i - result[current] if result[current] != -1
    result[current] = i
  end
end

periodicSequence(11,2,6,12)


# Definition
# A periodic sequence s is defined as follows:
#
#     s[0], a, b and m are all given positive integers;
#     s[i] for i > 0 is equal to (a * s[i - 1] + b) mod m.
#
# Find the period of s, i.e. the smallest integer T
# such that for each i > k (for some integer k): s[i] = s[i + T].
#
# Example
#
#     For s0 = 11, a = 2, b = 6, and m = 12, the output should be
#     periodicSequence(s0, a, b, m) = 2.
#
#     The sequence would look like this: 11, 4, 2, 10, 2, 10, 2, 10, 2, 10....
#
#     For s0 = 1, a = 2, b = 3, and m = 5, the output should be
#     periodicSequence(s0, a, b, m) = 4.
#
#     The sequence would look like this: 1, 0, 3, 4, 1, 0, 3, 4, 1, 0, 3, 4....
#
# Input/Output
#
#     [execution time limit] 4 seconds (rb)
#
#     [input] integer s0
#
#     a positive integer representing s[0].
#
#     Guaranteed constraints:
#     1 ≤ s0 ≤ 100,
#     s0 < m.
#
#     [input] integer a
#
#     Guaranteed constraints:
#     2 ≤ a ≤ 100.
#
#     [input] integer b
#
#     Guaranteed constraints:
#     2 ≤ b ≤ 100.
#
#     [input] integer m
#
#     Guaranteed constraints:
#     5 ≤ m ≤ 100.
#
#     [output] integer
#         The sequence period.

######################################################################
# Java solution

# int periodicSequence(int S0, int A, int B, int M) {
#
#   int[] occurrence = new int[M];
#   int currentValue = S0;
#
#   for (int i = 0; i < M; i++) {
#     occurrence[i] = -1;
#   }
#   occurrence[S0] = 0;
#
#   for (int i = 1; ; i++) {
#     currentValue = (A * currentValue + B) % M;
#     if (occurrence[currentValue] != -1) {
#       return i - occurrence[currentValue];
#     }
#     occurrence[currentValue] = i;
#   }
# }
