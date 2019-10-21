def willYou(young, beautiful, loved)
 a = [young, beautiful, loved]
  return true if (loved == false && a.count(true) == 2) || (loved == true && a.count(false) >= 1)
  else false
end

willYou(true, false, true)

# best solution
#def willYou(young, beautiful, loved)
#    (young && beautiful) != loved
#end
