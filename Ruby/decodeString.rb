def decodeString(s)
  # o = ""
  # s.count("[").times do
  #  s.find("[")
  # end
  #1 while s.gsub!(/(\d+)\[([a-z]*)\]/) { $2 * $1.to_i }
  1 while s.gsub!(/(\d+)\[([a-z]*)\]/) { $2 * $1.to_i }
  puts s
  s
end

decodeString("2[ab]1[cc]")
