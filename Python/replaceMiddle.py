def replaceMiddle(arr):
    n = len(arr)
    if n % 2:
        return arr
    else:
        return arr[:n//2-1] + [arr[n//2-1] + arr[n//2]] + arr[n//2+1:]

# Best solution
# def replaceMiddle(arr):
#     if len(arr) % 2 == 1:
#         return arr
#     else:
#         arr1 = arr[:]
#         new_mid = arr1[int(len(arr1) / 2)] + arr1[int(len(arr1) / 2) - 1]
#         del arr1[int(len(arr1) / 2)]
#         arr1[int(len(arr1) / 2)] = new_mid
#         return arr1
# or
# def replaceMiddle(arr):
#
#     arr_len = len(arr)
#     arr_half = arr_len // 2
#     middle = arr[arr_half] if arr_len % 2 != 0 else arr[arr_half - 1] + arr[arr_half]
#
#     if arr_len % 2 == 0:
#         arr[arr_half] = middle
#         arr.pop(arr_half - 1)
#
#     return arr
