def boxBlur(image)
  l, h = image[0].count, image.size
#creates a deep copy of the nested array image
  i = image.map(&:dup)
# Mark borders as "b"
  l.times do |x|
    i[0][x] = "b" ; i[-1][x] = "b"
    h.times { |k| i[k][0] = "b" ;   i[k][-1] = "b" if k != 0 && k != (h -1) }
  end
### Calculate the avg in i
  i.each_with_index {|v, idx|
    i[idx].each_with_index {|v2, idx2|
      i[idx][idx2] = ( \
      (image[idx][idx2] + image[idx][(idx2 + 1)] + image[idx][(idx2 - 1)]) \
       + (image[idx +1][idx2] + image[idx +1][idx2 +1] + image[idx +1][idx2 -1]) \
       + (image[idx -1][idx2] + image[idx -1][idx2 +1] + image[idx -1][idx2 -1]) \
      ) / 9 if i[idx][idx2] != "b"
    }
  }
### Delete borders
    i.each_with_index {|v, idx|
      i[idx].each_with_index {|v2, idx2|
       i[idx].delete_if {|border| border == "b" }
      }
    }
  # deletes the array element if empty
  puts i.reject!(&:empty?)
  i
end

boxBlur([[1,1,1],
 [1,7,1],
 [1,1,1]])

 # Other solutions
#  def boxBlur(i)
#     (0...i.size-2).map do |ri|
#         (0...i[0].size-2).map do |ci|
#             vs = (0..2).flat_map {|rb| (0..2).map {|cb| i[ri+rb][ci+cb]}}
#             (vs.reduce(:+) / 9.0).floor
#         end
#     end
# end
# or
# def boxBlur img
#     new_img = []
#     h, w = img.size, img.first.size
#
#     (1...h-1).each do |r|
#         new_img << []
#         (1...w-1).each do |c|
#             new_img[r - 1] << sum(img, r,c)
#         end
#     end
#
#     new_img
# end
