#5-1
data = list(range(1,21))

for i in range(0,len(data)) :
    print("%d" %data[i], end= " ")
print()

# 5-2
data = list(range(1,21))
for i in range(1,len(data),2) :
    print("%d"%data[i], end=" ")
print()

data = list(range(1,21))   
for i in range(0,len(data)) :
    if(i+1)%2 ==0 :
        print("%d" %data[i], end= " ")
print()

# 5-3
data = list(range(1,21))
i =0
while i<len(data) :
    print("%d" %data[i], end= " ")
    i+=2
print()

#5-4
data = []
for x in range(10,21) :
    data.append(x)
print(data)