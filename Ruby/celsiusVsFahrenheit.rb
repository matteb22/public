def celsiusVsFahrenheit(yourTemps, friendsTemps)
  o = 0
  (0...yourTemps.length).each do |i|
     o += 1 if friendsTemps[i] > (9 * yourTemps[i] / 5) + 32
  end
  o
end
