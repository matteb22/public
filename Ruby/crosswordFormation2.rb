def crosswordFormation(words)
t = 0
(0...words.length).each do |i|
  (0...words.length).each do |j|
    (0...words.length).each do |k|
      (0...words.length).each do |l|
        if (i != j && i != k && i != l && j != k && j != l && k != l)
          then t += check(words[i],words[j],words[k],words[l])
        end
      end
    end
  end
end
puts t
return t
end

# function crosswordFormation(words) {
#     let t = 0;
#     for (let i = 0; i < words.length; i++){
#         for (let j = 0; j < words.length; j++){
#             for (let k = 0; k < words.length; k++){
#                 for (let l = 0; l < words.length; l++){
#                     if (i != j && i != k && i != l &&
#                         j != k && j != l && k != l)
#                         t+=check(words[i],words[j],words[k],words[l]);
#                 }
#             }
#         }
#
#     }
#
#     return t;
#
# }

def check(a, b, c, d)
  t = 0
  #t, a1, a2, b1, b2, c1, d1 = 0, 0, 0, 0, 0, 0, 0
  (0...a.length).each do |a1|
    (0...a.length).each do |a2|
      (0...b.length).each do |b1|
        (0...b.length).each do |b2|
          (0...c.length).each do |c1|
            (0...d.length).each do |d1|
              c2 = c1 + (a2 - a1)
              d2 = d1 + (b2 - b1)
              if c2 < c.length && d2 < d.length
                if a[a1] == b[b1] \
                  && a[a2] == d[d1] \
                  && c[c1] == b[b2] \
                  && c[c2] == d[d2] \
                  then t += 1 ; puts t
                end
              end
            end
          end
        end
      end
    end
  end
  #puts t
  return t
end

words = ["crossword",
 "square",
 "formation",
 "something"]
crosswordFormation(words)
#check("baa", "caa", "daa", "eaa")


# function check (a, b, c, d) {
#     let t = 0;
#     for (let a1 = 0; a1 < a.length; a1++){
#
#         for (let a2 = a1+2; a2 < a.length; a2++){
#             for (let b1 = 0; b1 < b.length; b1++){
#                 for (let b2 = b1+2; b2 < b.length; b2++){
#                     for (let c1 = 0; c1 < c.length; c1++){
#                         for (let d1 = 0; d1 < d.length; d1++) {
#                             let c2 = c1 + (a2-a1);
#                             let d2 = d1 + (b2-b1);
#                             if (c2 < c.length && d2 < d.length) {
#                                 if (a.charAt(a1)==b.charAt(b1)
#                                    && a.charAt(a2)==d.charAt(d1)
#                                    && c.charAt(c1)==b.charAt(b2)
#                                    && c.charAt(c2)==d.charAt(d2)){
#                                     t++;
#                                    }
#
#                             }
#                         }
#                     }
#                 }
#             }
#         }
#     }
#
#
#     return t;
#
# }
