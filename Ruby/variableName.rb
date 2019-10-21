def variableName(name)
  return false if /^\d+/.match(name) != nil || /^\w+$/.match(name) == nil
  true
end

variableName("2w2")

# Other solutions
# def variableName(name)
#     not (/^[a-zA-Z_][a-zA-Z0-9_]*$/ =~ name).nil?
# end

# or
# def variableName(name)
#     !!(name =~ /^[a-zA-Z_]\w*$/)
# end
