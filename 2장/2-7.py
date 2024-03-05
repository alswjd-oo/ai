# 이벤트란 사용자가 동작하는 것을 프로그램이 받아서 처리하기
# 콜백 함수 callback - 리스너와 비슷함 : 이벤트 발생하는 것을 처리하는 함수
import cv2 as cv
import sys

img = cv.imread('girl.jpg')

if img is None :
    sys.exit('파일을 찾을 수 없습니다.')

# 사용자 함수 정의
def draw(event, x, y, flags, param) :
    if event == cv.EVENT_LBUTTONDOWN:
        cv.rectangle(img, (x,y),(x+200,y+200),(0,0,255),2)
    elif event == cv.EVENT_RBUTTONDOWN:
        cv.circle(img,(x,y),50,(255,0,0),2)
    
    cv.imshow('Drawing',img)
    
cv.namedWindow('Drawing')


cv.setMouseCallback('Drawing', draw) # Drawing 윈도우에 draw 콜백 함수 지정

while(True):    # 마우스 이벤트가 언제 발생할 지 모르니까 무한 반복
      if cv.waitKey(1) == ord('q'):
        cv.destroyAllWindows()
        break