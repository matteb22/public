def comfortableNumbers(l, r)
    a = l
    b = a + 1
    a_sum, b_sum, pairs = 0, 0, 0

    while (a < r)
        string = a.to_s ; x = 0

        while (x < string.length)
              a_sum = a_sum + string[x].to_i ; x += 1
        end

        while (b <= r)
              string = b.to_s ; x = 0

              while (x < string.length)
                    b_sum += string[x].to_i ; x += 1
              end

              if b >= a - a_sum and b <= a + a_sum and a >= b - b_sum and a <= b + b_sum then
                 pairs += 1
              end

              b += 1 ; b_sum = 0
        end

        a += 1 ; b = a + 1 ; a_sum = 0
    end

    return pairs
end
