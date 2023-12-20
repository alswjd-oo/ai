# 요소변환 수정(삽입, 삭제, 업데이트) 하기
flowers = ["목련", "벚꽃", "장미", "백일홍"]
print(flowers)

# 수정
flowers[1] = "무궁화" #벚꽃--> 무궁화
print(flowers)
flowers[3] = "개나리" #백일홍--> 개나리
print(flowers)

# 추가 - 뒤로 붙이기
flowers.append("백일홍")
print(flowers)
flowers.append("튜울립")
print(flowers)

#, 메소드(객체 안에서 동작을 시키는 것) vs 함수(동작을 시키는 것)

# 실무에서는 리스트를 어떻게 쓸까?
# 빈 리스트 만들고 추가로 넣기
scores = [] #빈 리스트
scores.append(100)
scores.append(90)
scores.append(85)
scores.append(100)
scores.append(98)
print(scores)

# 특정 위치에 삽입하기
'''
fruits = []

while True :
    fruit = input("좋아하는 과일은?")
    if fruit=="끝" :
        break
    fruits.append(fruit)
print(fruits) 
fruits.insert(1, "자몽")
print(fruits)
'''

# 특정요소 위치찾기
number = [5,20,13,7,8,22,7,17]
print(number)
idx = number.index(7,5) # 인덱스 번호 5번 이후로 나오는 7 찾기 
print(idx)

number = [5,20,13,7,8,22,7,17,8,9,8,1]
print(number.index(8,9,11))

flowers = ["목련", "벚꽃", "장미", "벚꽃" ,"백일홍", "벚꽃"]
print(flowers.index("벚꽃"))
print(flowers.index("벚꽃", 4))

# 삭제하기 remove(요소)
flowers = ["목련", "벚꽃", "장미", "벚꽃" ,"백일홍", "벚꽃"]
flowers.remove("목련")
print(flowers)
flowers.remove("벚꽃")
print(flowers)

x = flowers.pop(2)
print(x)
print(flowers)

flowers.clear
print(flowers)