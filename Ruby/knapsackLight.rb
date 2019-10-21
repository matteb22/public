def knapsackLight(value1, weight1, value2, weight2, maxW)
  return 0 if maxW < [weight1, weight2].min
  return value1 + value2 if maxW >= weight1 + weight2
  return value1 if maxW >= weight1 && maxW < weight2
  return value2 if maxW < weight1 && maxW >= weight2
  return [value1, value2].max  if maxW >= [weight1, weight2].max
end
