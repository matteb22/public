def candles(candles, makeNew):
    totalCandles = 0
    leftovers = 0
    while candles > 0:
        totalCandles += candles
        leftovers += candles
        candles = int(leftovers / makeNew)
        leftovers -= candles * makeNew
    return totalCandles
