def reverseParentheses(s)
    0 while s.gsub!(/\(([^()]*)\)/) { $1.reverse }
    puts s
    s
end

reverseParentheses("abc(ed(((abd)))(f)hg)")

# really a good one. took lot of time. but worth it. the
# real story is you have to find index of first '(' and then
# keep on searching for ')' or '('. if you find ')' then do
#   the reverse work for the '(' and ')' index or if you find
#    '(' then update your first index '('.

# def reverseParentheses(s)
#   c = s.count("(")
#   puts c
#   indexes = []
#   c.times do |i|
#     indexes << s.index("(")
#     s[s.index("(")] = "1"
#     # s[s.index("(")] = 1
#     # indexes << s.index(")")
#     if condition
#
#     end
#
#     indexes << s.index(")")
#     s[s.index(")")] = "2"
#   end
#   puts "this is indexes: #{indexes}"
#   puts s
#   # puts ia1
#   # puts ic1
#   # puts (s[0...ia1] + s[ia1..ic1].reverse + s[ic1..-1]).delete("()")
# end



# # 4 char methods with !
# succ
# next
# gsub
# chop
# tr_s
# # 4 char methods with ?
# is_a
# # 6 char methods with ?
# frozen
#
# === Implementation from String
# ------------------------------------------------------------------------------
#   str.gsub(pattern, replacement)       -> new_str
#   str.gsub(pattern, hash)              -> new_str
#   str.gsub(pattern) {|match| block }   -> new_str
#   str.gsub(pattern)                    -> enumerator
#
#   ------------------------------------------------------------------------------
#
#   Returns a copy of str with the all occurrences of
#   pattern substituted for the second argument. The
#   pattern is typically a Regexp; if given as a String, any regular
#   expression metacharacters it contains will be interpreted literally, e.g.
#   '\\\d' will match a backslash followed by 'd', instead of a digit.
#
#   If replacement is a String it will be substituted for
#   the matched text. It may contain back-references to the pattern's capture
#   groups of the form \\\d, where d is a group number, or \\\k<n>, where n is
#   a group name. If it is a double-quoted string, both back-references must be
#   preceded by an additional backslash. However, within
#   replacement the special match variables, such as $&,
#   will not refer to the current match.
#
#   If the second argument is a Hash, and the matched text is one of its keys, the
#   corresponding value is the replacement string.
#
#   In the block form, the current match string is passed in as a parameter, and
#   variables such as $1, $2, $`, $&, and $' will be set appropriately. The value
#   returned by the block will be substituted for the match on each call.
#
#   The result inherits any tainting in the original string or any supplied
#   replacement string.
#
#   When neither a block nor a second argument is supplied, an Enumerator is
#   returned.
#
#     "hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
#     "hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
#     "hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
#   :
