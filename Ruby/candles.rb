def candles(candles, make_new)
  burned = 0
  leftovers = 0
  while candles > 0
    burned += candles
    leftovers += candles
    candles = leftovers / make_new
    leftovers = leftovers % make_new
  end
  puts burned
end

candles(5, 2)
