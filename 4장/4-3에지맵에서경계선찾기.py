import cv2 as cv
import numpy as np

img = cv.imread('soccer.jpg')
# 에지맵에서 임계값 이상인 경계선만을 취한다
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
canny = cv.Canny(gray, 100, 200)
# 경계선을 찾는다
# findContours(영상, 경계선을 찾는 방식(바깥쪽 경계선만 찾는다), 경계선 표현하는 방식)
contour, hierarchy = cv.findContours(canny, cv.RETR_LIST, cv.CHAIN_APPROX_NONE)

lcontour = []
for i in range(len(contour)):
    if contour[i].shape[0] > 100:
        lcontour.append(contour[i])
# 영상에 경계선을 그린다. -1은 모든 경계선을 그린다  
cv.drawContours(img, lcontour, -1, (0,100), 4)

cv.imshow('Original with contours', img)
cv.imshow('Canny', canny)

cv.waitKey()
cv.destroyAllWindows()