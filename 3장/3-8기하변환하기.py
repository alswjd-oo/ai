import cv2 as cv

def draw(event, x, y, flags, param) :
    global x1, y1, x2, y2 # 전역변수 선언
    
    if event == cv.EVENT_LBUTTONDOWN :
        x1, y1 = x, y
    elif event == cv.EVENT_LBUTTONUP :
        x2, y2 = x, y
        cv.rectangle(img, (x1, y1), (x2, y2), (0,0,255), 2)
    cv.imshow('Drowing', img)

img = cv.imread('rose.png')
patch = img[250:350, 170:270, :]

img = cv.rectangle(img, (170, 250), (270, 350), (255,0,0), 3)
patch1 = cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_NEAREST)
patch2 = cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_LINEAR)
patch3 = cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_CUBIC)

cv.imshow('Original', img)
cv.imshow('Resize nearest', patch1)
cv.imshow('Resize bilinear', patch2)
cv.imshow('Resize bicubic', patch3)

cv.waitKey()
cv.destroyAllWindows()