def isIPv4Address(str)
  puts "true" if str.count('.')==3 && str.split('.').all? {|s| /^\d+$/.match(s) && s.to_i < 256 } else puts "false"
end

isIPv4Address("172.316.254.1")

# Other solutions
# def isIPv4Address(inputString)
#     return false if inputString.count(".") != 3
#     inputString.split(".").each do |el|
#         return false unless ("0".."255").include?(el)
#     end
#     true
# end
# or
# def isIPv4Address(inputString)
#   parts = inputString.split('.')
#   return false if parts.size != 4
#   parts.all? {|p| p.match(/\A\d+\z/) && p.to_i.between?(0, 255)}
# end
# or
# require 'ipaddr'
# def isIPv4Address(inputString)
#     !!IPAddr.new(inputString) rescue false
# end


# # if str.count('.')==3 && str.split('.').all? {|s| s =~ [/^\d{3}$/] && s.to_i < 256  }
# if str.count('.')==3 && str.split('.').all? {|s| s.to_i =~ [/^\d{3}$/] && s.to_i < 256 }
#   puts "true"
# else
#   puts "false"
# end


# block = /\d{,2}|1\d{2}|2[0-4]\d|25[0-5]/
# re = /\A#{block}\.#{block}\.#{block}\.#{block}\z/
#
# re =~ "255.255.255.255" # => 0
# re =~ "255.255.255.256" # => nil
