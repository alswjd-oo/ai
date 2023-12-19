# for i in range(10) :
#     print (i, end= " ")
# print('-'*30)
# for i in range(1,11) :
#     print (i, end= " ")
# print('-'*30)
# for i in range(11,0,-1) :
#     print (i, end= " ")

# for i in "I love you!" :
#     print(i, end=" ")
# sum =0
# j=1
# while True :
#     if sum>= 5000 :
#         break
#     else :
#         j+=1
#         sum +=j
# print( j, sum)

# # 178 4-6
# # 10! = 1x2x3x4x...x10
# fac = 1
# for i in range(1,11) :
#     fac = fac * i
# print(fac)

# # 심화문제 4-1
# # 1단계 1~1000까지 출력하기
# for i in range(1,1001) :
#     print(i, end=" ")
# # 2단계 3의 배수가 아닌 것만 출력
# # 3의 배수는 9%3 ==0
# # 3의 배수가 아닌 것 8%3 !=0
# for i in range(1,1001) :
#     if i % 3 !=0 :
#         print(i, end=" ")
#         print()
# # 3단계 한 줄에 10개씩 출력
# count = 0
# for i in range(1,1001) :
#     if count == 10 :
#         print()
#         count = 0
#     if i % 3 !=0 :
#         print(i, end=" ")  
#         count +=1   

# # while문
# i=1
# count = 0
# while i<=1000 :
#     if count == 10:
#         print()
#         count = 0
#     if i % 3 !=0 :
#         print( i, end=" ")
#         count +=1
#     i +=1
    
# # 4-2 성적을 입력 받아 등급 판정하기 'q'를 입력하면 프로그램 종료

# con = "y"
# while con =="y" :
#     jumsu = int(input("성적을 입력하세요"))
#     if 90<=jumsu<= 100 :
#         result = "수"
#     elif 80<=jumsu<= 89 :
#         result = "우"
#     elif 70<=jumsu<= 79 :
#         result = "미"
#     elif 60<=jumsu<= 69 :
#         result = "양"
#     elif 0<=jumsu<= 59 :
#         result = "가"
#     print(f"등급 : {result}")
#     con = input("계속하시겠습니까?(중단:q, 계속:y)")

# 4-3
start = int(input("시작 수를 입력해주세요 :"))
end = int(input("끝 수를 입력해주세요 :"))
x = True # 소수인 경우는 True로 아닌 경우는 False로
for i in range(start, end+1) :
    x = True
    for j in range(2, i) :
        if i % j == 0 :
            x = False
            break # 한 단계 반복문 밖으로 나간다. 즉 for j에서 밖으로

    if x : print(i, end = " ")
