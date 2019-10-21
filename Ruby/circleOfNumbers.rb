def circleOfNumbers(n, firstNumber)
  o = firstNumber + n / 2
  if o <= (n - 1)
    return o
  else
    return firstNumber - n / 2
  end
end

circleOfNumbers(10, 7)


# Consider integer numbers from 0 to n - 1 written down along the circle in such a
# way that the distance between any two neighboring numbers is equal
# (note that 0 and n - 1 are neighboring, too).
#
# Given n and firstNumber, find the number which is written in the
# radially opposite position to firstNumber.
#
# Example
#
# For n = 10 and firstNumber = 2, the output should be
# circleOfNumbers(n, firstNumber) = 7.
#
# Input/Output
#     [execution time limit] 4 seconds (rb)
#
#     [input] integer n
#     A positive even integer.
#     Guaranteed constraints:
#     4 ≤ n ≤ 20.
#     [input] integer firstNumber
#     Guaranteed constraints:
#     0 ≤ firstNumber ≤ n - 1.
#
#     [output] integer



# Other solutions
# def circleOfNumbers(n, firstNumber)
#     (firstNumber + (n / 2)) % n
# end
