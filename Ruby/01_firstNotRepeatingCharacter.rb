# Note: Write a solution that only iterates over the string once and uses O(1) additional memory, since this is what you would be asked to do during a real interview.
#
# Given a string s, find and return the first instance of a non-repeating character in it. If there is no such character, return '_'.
#
# Example
#
#     For s = "abacabad", the output should be
#     firstNotRepeatingCharacter(s) = 'c'.
#
#     There are 2 non-repeating characters in the string: 'c' and 'd'. Return c since it appears in the string first.
#
#     For s = "abacabaabacaba", the output should be
#     firstNotRepeatingCharacter(s) = '_'.
#
#     There are no characters in this string that do not repeat.
#
# Input/Output
#
#     [execution time limit] 4 seconds (rb)
#
#     [input] string s
#
#     A string that contains only lowercase English letters.
#
#     Guaranteed constraints:
#     1 ≤ s.length ≤ 105.
#
#     [output] char
#
#     The first non-repeating character in s, or '_' if there are no characters that do not repeat.
# def firstNotRepeatingCharacter(s)
#   arr = s.chars
#   puts (arr - (arr.difference(arr.uniq))).first
# end

def firstNotRepeatingCharacter(s)
  rev, counter = s.reverse,0
  # counter = 0
  while counter < s.length
    if s.index(s[counter]) == ((s.length-1) - rev.index(s[counter]))
      puts  s[counter]
    end
    counter += 1
  end
  puts '_'
end


# s = "q" * (10**4) + "r" * (10**4) + "a"
s = 'abacabad'
firstNotRepeatingCharacter(s)

# best solution
# def firstNotRepeatingCharacter(s)
#     s.chars.uniq.each{|c| return c if s.chars.count(c) == 1}
#     return "_"
# end
