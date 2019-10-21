def minesweeper(matrix):

    r = []

    for i in range(len(matrix)):
        r.append([])
        for j in range(len(matrix[0])):
            l = -matrix[i][j]
            for x in [-1,0,1]:
                for y in [-1,0,1]:
                    if 0<=i+x<len(matrix) and 0<=j+y<len(matrix[0]):
                        l += matrix[i+x][j+y]

            r[i].append(l)
    return r

# Other solutions
# def minesweeper(matrix):
#     res = [[0 for _ in range(len(matrix[0]))] for _ in range(len(matrix))]
#     for i, row in enumerate(matrix):
#         for j, col in enumerate(row):
#             if col:
#                 if i-1 >= 0:
#                     res[i-1][j] += 1
#                     if j-1 >= 0: res[i-1][j-1] += 1
#                     if j+1 < len(row): res[i-1][j+1] += 1
#                 if j-1 >= 0: res[i][j-1] += 1
#                 if j+1 < len(row): res[i][j+1] += 1
#                 if i+1 < len(matrix):
#                     res[i+1][j] += 1
#                     if j-1 >= 0: res[i+1][j-1] += 1
#                     if j+1 < len(row): res[i+1][j+1] += 1
#     return res
