def tennisSet(score1, score2)
  s = [score1, score2]
  return true if s == [7, 6] || s == [6, 7]
  return true if (s[0] == 6 && s[1] < 5) || (s[1] == 6 && s[0] < 5)
  return true if (s[0] >= 5 && s[1] >= 5 && (score1 - score2).abs == 2 )
  return false if s[0] <= 5 && s[1] <= 5
  else false
end

# Best Solution
#def tennisSet(score1, score2)
#    a, b = [score1, score2].sort
#    a < 5 && b == 6 || a >= 5 && b == 7 && a < b
#end
