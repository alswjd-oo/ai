import cv2 as cv

img = cv.imread('soccer.jpg')
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)

# x방향의 연산을 적용
# cv.Sobel(영상, 32비트실스맵으로 저장, x방향연산자 사용(1,0), 3x3크기)
grad_x = cv.Sobel(gray, cv.CV_32F, 1, 0, ksize=3)
#                                     y방향연산자 사용(0,1)
grad_y = cv.Sobel(gray, cv.CV_32F, 0, 1, ksize=3)

# 음수가 포함된 맵에 절댓값을 취해 양수로 변환한다.
# convertScaleAbs() 8비트형인 CV_8U(numpy의 uint8과 같음)
sobel_x = cv.convertScaleAbs(grad_x)
sobel_y = cv.convertScaleAbs(grad_y)

# sobel_x와 sobel_y에 0.5를 곱해서 서로 더하고 0을 더함
# 즉 sobel_x * 0.5 + sobel_y * 0.5 + 0
edge_strength = cv.addWeighted(sobel_x, 0.7, sobel_y, 0.3, 0)

cv.imshow('Original', gray)
cv.imshow('sobelx', sobel_x)
cv.imshow('sobely', sobel_y)
cv.imshow('edge strength', edge_strength)

cv.waitKey()
cv.destroyAllWindows()