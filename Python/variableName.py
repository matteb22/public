def variableName(name):

    if re.match('[a-z_][0-9_a-z]*$', name,re.IGNORECASE):
        return True
    return False

# Other solutions
# def variableName(name):
#     return name.isidentifier()
