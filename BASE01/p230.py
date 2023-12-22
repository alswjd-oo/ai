# 튜플 - 수정이 안된다. 용도-변동 불가한 것
t =(1,2)
t1 = 1,2
print(t[0])
print(t1[1])
print(type(t))
t2 = 1,
print(type(t2))
# () 생략할 수 있다, 1개 요소 (1,)
t3 = () # 빈 튜플
print(type(t3))

animals = ("토끼","거북이","사자","여우")
print(animals[-1:])

# 토끼를 돼지로 바꾸기
# animals[0] = "돼지"
# 바꾸기 
# 1단계 List() 2단계 tuple()
ani_list = list(animals)
print(ani_list)
ani_list[0] = "돼지"
print(ani_list)
animals = tuple(ani_list)
print(animals) 

# 튜플 만들기
# 변수 = (), 변수 = tuple(())
n = tuple(range(10,21))
print(n)
n2 = tuple([1,2,3])
print(n2)
print(n[0])
print(n[2:5])
print(n[2:])
print(n[:5])
print(n[-2])
print(n[::-1])
print(len(n))

tup1 = (10,20,30)
tup2 = (40,50,60)
tup3 = tup1 + tup2
print(tup1)
print(tup2)
print(tup3)
