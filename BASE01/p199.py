# 병합 '+'
person1 = ["kim", 24, "kim@naver.com"]
person2 = ["lee", 35, "lee@hanmail.net"]
person3 = ["kim", 24, "kim@naver.com"]

person = person1 + person2 + person3
print(person)

# 합계 sum()
scores = list(range(80,101,10))
print(scores)
sm = sum(scores)
print(sm)

# 리스트 안에 숫자 문자 섞여 있다면 sum() --> error
data = [1, 2, 8.9]
sm = sum(data)
print(sm)

jumsu = list(range(90,101,1)) 
sm = sum(jumsu)
av = sm/len(jumsu)
print(av)

# 순서 거꾸로 reverse()
data = ["사과", "배", "귤", "딸기"]
data.reverse()
print(data)

# 복사하기 copy()
fruits = ["apple", "banana", "orange"]
print(fruits)

x = fruits.copy() # 리스트의 내용이 동일하게 다시 메모리 만들어지는 것
print(x)
print(type(x))

xx = fruits # fruits 리스트의 주소를 xx변수에 넣는다. 같은 메모리 가리킴
print(xx)
print(type(xx))

fruits.insert(1, "pineapple")
print(fruits)
print(x)
print(xx)

# 정렬하기 sort()
data = [12,8,15,32,-3,-20,15,34,6]
data1 = ['a', 'A', 'C', '!', '한글', '가나']

data.sort() # 오름차순 정렬
print(data)

data1.sort() # 유니코드 번호 순서대로 정렬
print(data1)

data.sort(reverse=True)
print(data)

data1.sort(reverse=True)
print(data1)