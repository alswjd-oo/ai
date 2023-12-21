# 특정문자열 찾기, 문자열치환, 문자열쪼개기
String1 = "Python is fun!"
print(String1)
a = String1.find("k")
print(a)

studentName = "홍길동 이순신 이경미 최수진"
# 최수진 있어요?
# 우리반 아닙니다.
if studentName.find("최수진") ==-1 :
    print("우리반 아닙니다")
else :
    print("우리반입니다.")

# 치환하기
a = studentName.replace("최수진", "정수진")
print(a)

# 없는 자료를 치환하면 오류는 없고 치환 안됨
a = studentName.replace("이수진", "박수진")
print(a)

data = "홍길동/이순신/최경주"
# 결과 홍길동 이순신 최경주
data = data.replace("/", " ")
print(data)
# 결과 홍길동-이순신-최경주
data = data.replace(" ", "-")
print(data)

# 데이터 쪼개기
hello = "Have a nice day; Happy new Year; Merry Christmas"
list = hello.split(";",1)
print(list)

names = ["황예린", "홍지수", "안지영"]
print(names)

x = "/".join(names)
print(x)

phoneNumber = ["010", "1234", "1234"]
x = "-".join(phoneNumber)
print(x)
print(type(x))

# 예제 5-25
phone_list = ["010-3645-2637", "010-3984-5377", "010-3554-0937"]
print(phone_list)

phone_list2 = []
for number in phone_list :
    x = number.replace("-", " ")

    phone_list2.append(x)

print(phone_list2)

# 5-26
setences = ["Love me, love my dog", "no news is good news", "Blood is thicker than water."]

for setence in setences :
    x = setence.replace(" ", "_")
    print(x)

# 5-5
questions = ["s_hool", "compu_er", "deco_ation", "windo_", "hi_tory"]
answers = ["c", "t", "r", "w", "s"]

for i in range(0,len(questions)) :
    q = "%s : 밑줄에들어갈 알파벳은?" %questions[i]
    guess = input(q)

    if guess == answers[i] :
        print("정답!")
    else :
        print("틀렸어요!")

# 5-6
scores = []

while True :
    x = int(input("성적을 입력하세요(종료 시 -1 입력): "))

    if x ==-1 :
        break
    else :
        scores.append(x) 

sum =0
for score in scores :
    sum = sum + score

avg = sum/len(scores)
print("합계: %d, 평균: %2f" %(sum, avg))
