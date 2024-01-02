def add(a, b) :
    c = a + b
    return c
def sub(a, b) :
    c = a - b
    return c
def mul(a, b) :
    c = a * b
    return c
def diy(a, b) :
    c = a // b 
    return c
def mm(a, b) :
    c = b * b + a
    return c
def ss(a, b, c) :
    if a < b and a < c :
        min = a
    elif b < a and b < c :
        min = b
    elif c < a and c < b :
        min = c
    return min