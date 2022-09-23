n = 5
res = n
while n > 1:
    n = n - 1
    
    x = res
    y = n
    resmul = 0
    while y > 0:
        resmul = x + resmul
        y = y - 1
    
    res = resmul

print(res)

