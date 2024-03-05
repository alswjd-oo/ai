import cv2 as cv # opencv 사용
import sys # 운영체제 사용

img = cv.imread('soccer.jpg') # 파일 읽기

if img is None:
    sys.exit('파일을 찾을 수 없습니다')

cv.imshow('soccer.image', img) # 화면에 표시하기

cv.waitKey() # 멈추기
cv.destroyAllWindows() # 닫기 

# 연습문제
img = cv.imread('opencv2.jpg')

if img is None:
    sys.exit('파일을 찾을 수 없습니다')
    
cv.imshow('opencv2.image', img)

cv.waitKey()
cv.destroyAllWindows()