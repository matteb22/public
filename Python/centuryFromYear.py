def centuryFromYear(year)
 cent = year / 100
 if year % 100 == 0
   return cent
 else
   return cent + 1
 end
end

# other solutions
# def centuryFromYear(year):
#     return year//100 if year % 100 == 0 else year//100 + 1
