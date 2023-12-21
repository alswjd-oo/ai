# 2차원 리스트
numbers = [[10,20,30],[40,50,60],[60,70,80],['a',[100,90]]]
# 10
print(numbers[0][0])
# 60
print(numbers[1][2])
# 80
print(numbers[2][2])
# 'a'
print(numbers[3][0])
# 100
print(numbers[3][1][0])

boards = [[1,"작성자1","내용1"],[2,"작성자2","내용2"],[3,"작성자3","내용3"]]
# 내용 전부 찍기
# [0][0] [0][1] [0][2]  [1][0] [1][1] [1][2]  [2][0] [2][1] [2][2]
for i in range(len(boards)) :
    for j in range(len(boards[i])) :
        print(boards[i][j], end=" ")
    print()

jumsu = [[10,20],[30,40,50],[60]]
for i in range(len(jumsu)) :
    for j in range(len(jumsu[i])) :
        print(jumsu[i][j], end=" ")
    print()
print(len(jumsu[0]))

sm = 0
for i in range(0, len(jumsu)):
    for j in range(0, len(jumsu[i])):
        sm = sm+jumsu[i][j]
print(sm)

print(sum(jumsu[0]))
print(sum(jumsu[1]))

sm = sum(jumsu[0])+sum(jumsu[1])+sum(jumsu[2])
print(sm)

# for문 이용
sm = 0
for i in range(0,len(jumsu)) :
    sm += sum(jumsu[i])
print(sm)

strings = [["원두커피","라떼","콜라"],["우동","국수","피자","파스타"]]
# "국수" 출력
print(strings[1][1])
# "피자","파스타" 지우기
strings[1].remove("피자")
strings[1].remove("파스타")
# "원두커피" -> "아메리카노"
findColumIndex = strings[0].index("원두커피")
strings[0][findColumIndex] = "아메리카노"

print(strings[0])
print(strings[1])

# 리스트로 영화관 예약 가능 좌석
seats = [[0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0]]
for i in range(0,len(seats)) :
    print("%d행"%i, end="")
    for j in range(0,len(seats[i])) :
        if seats[i][j] ==0 :
            print("%3s"%"□", end="")
    print()

seatsCount = int(input("몇 좌석을 예약하시겠습니까?"))
count = 1
while count <=seatsCount :
    row = int(input("좌석예약하기 행을 입력하기"))
    colum = int(input("좌석예약하기 열을 입력하기"))
    seats[row][colum] = 1
    for i in range(0,len(seats)) :
        print("%d행"%i, end="")
        for j in range(0,len(seats[i])) :
            if seats[i][j] ==0 :
                print("%3s"%"□", end="")
            else :
                print("%3s"%"■", end="")
        print()

