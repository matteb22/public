def chessBoardCellColor(cell1, cell2):

    return (ord(cell1[0])+int(cell1[1])+ord(cell2[0])+int(cell2[1]))%2==0

# Other solutions
# def chessBoardCellColor(cell1, cell2):
#    def isbrown(cell):
#       num=ord(cell[0])+ord(cell[1])
#       if num & 1 == 0:
#          return True
#       return False
#    return isbrown(cell1)==isbrown(cell2)
