my_list = ["p","y","t","h","o","n","i","s","f","u","n","!"]

# 5-1
print(my_list[5:11])

# 5-2
print(my_list[-5:-2])

# 5-3
print(my_list[8:])

# 5-4
print(my_list[:4])

# 5-5
string = ["I am genious!"]
list = []
for i in range(0,len(string)) :
    list += string[i]
print(list)

# 5-6
while len(list) < len(string) :
    for i in range(0,len(string)) :
        list += string[i]
print(list)
# 5-7
numbers = [7,9,15,18,30,-3,7,12,-16,-12]
sum = 0
for i in range(0,len(numbers)) :
    sum = sum + numbers[i]
print(sum)

#5-8
numbers = [7,9,15,18,30,-3,7,12,-16,-12]
sum = 0
i=0
while i < len(numbers) :
    sum = sum + numbers[i]
    i +=1
print(sum)

#5-9
numbers = [7,9,15,18,30,-3,7,12,-16,-12]
sum =0
i =0
while i < len(numbers) :
    if  (i+1)%2 ==0:
        print(numbers[i], end=" ")
        sum = sum + numbers[i]
    i +=1
print("합계:",sum)

# 5-10
fruits = ["사과","오렌지","딸기","수박","멜론"]

for i in range(len(fruits)) :
    print("%d.%s"%(i+1,fruits[i]) )

# 5-11
data = [[10,20,30],[40,50],[60,70,80,90]]

for row in data :
    for x in row :
        print(x,end=" ")
    print()

# 5-12
data = [[10,20,30],[40,50],[60,70,80,90]]
for i in range(0,len(data)) :
    for j in range(0,len(data[i])) :
        if j ==0 :
            print(data[i][j], end=" ")
    print()

# 심화 5-1
file_names = ["file1.py","file2.txt","file3.pptx","file4.doc"]
# a = "file1.py"
# aS = a.split(".")
# print(aS)
for file_name in file_names :
    aS = file_name.split(".")
    print(f"{file_name} => 파일명: {aS[0]}, 확장자: {aS[1]}")
    print("%s => 파일명:%s, 확장자:%s" %(file_name, aS[0], aS[1]))

# 심화 5-2
emails = [["kim","naver.com"],["hwang","hanmail.net"],["lee","korea.com"],["choi","gamil.com"]]
email_new = []
for email in emails :
    email_new.append((email[0]+"@"+email[1]))
print(email_new)




