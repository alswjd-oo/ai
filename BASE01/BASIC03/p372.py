f = open("./basic03/scores.txt", "r", encoding="utf-8")
lines = f.readlines() # 리스트로 변환한다
print(lines)

for line in lines :
    data = line.split()
    print(data)
    i = 0
    sum = 0
    while i < len(data) :
        if i == 0 :
            print(data[i], end= " : ")
        else :
            sum+= int(data[i])
        i = i + 1
    avg = sum / (len(data) -1)
    print("%.2f점" %avg)
f.close()

f = open("./basic03/data.txt", "r", encoding="utf-8")
lines = f.readlines() 
print(lines)