# txt - 메모장 
# csv - 
# json

# 인코딩 - 특정언어로 처리되게 외부 파일 바꾸는 것 = 비슷 인코더, 부호기
# 디코딩 - 외부 파일로 처리되게 특정언어 내용을 바꾸는 것 = 비슷 디코더, 복호기(해석기)

'''
f = open ("new_pile1.txt", "a", encoding="utf-8")

names = ["이순신", "임희수"]

for name in names :
    f.write(name + "\n")


print("파일 쓰기 완료")
f.close()
'''

f = open ("new_pile1.txt", "r", encoding="utf-8")

# lines = f.readlines() 여러 줄을 한꺼번에 읽어온다 리스트로 반환
# line = f.readline() 한줄만 읽는다 -> 반복문 이용
# print(lines)

while True :
    line = f.readline()
    if not line : break
    print(line)
f.close()