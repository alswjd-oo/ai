2+3
2^3
10%%3
log10
log(10)
log(10,base=2)
sqrt(4)
max(10,5,9)
abs(-90)
factorial(5)
sin(60)
sin(45)
tan(45)
sin(pie/2)

# 변수 선언 방법1)
pi=3.14
sin(pi/2)

# 방법2)
pi<-3.14
pi

name <-  '홍길동' # <- 단축키로 alt + '-'
name

sqrt(-3)

# 연습문제 1
25+99
456-123
2*(3+4)
(3+5*6)/7
(7-4)*3
210+35
1256%%7
184%%5
1976/24
16*25+186*5-67*22

# 연습문제 3
pi <- 3.14
10^2*pi
12^2*pi
15^2*pi

# 연습문제 4
x <- sqrt(8)
log(x,base=2)
x <- sqrt(12)
log(x,base=2)
x <- sqrt(16)
log(x,base=2)

# 백터 1차원 배열 백터명 <- c(요소1, 요소2,...)
x <- c(1,2,3)
x

y <- c('a','b','c')
y

z <- c(TRUE,TRUE,FALSE,FALSE)
Z
z

x <- c(1,2,'a','b')
x # 모두 문자형으로 바뀐다
z <- c('a',TRUE)
z # 모두 문자형으로 바뀐다
z <- c(1,2,TRUE)
z # TRUE가 1로 바뀐다
z <- c(1,2,FALSE)
z # FALSE는 0으로 바뀐다

# 1~10까지 백터 만들기
num <- c(1,2,3,4,5,6,7,8,9,10)
num

# 1~100까지 백터 만들기 (연속)
num1 <- 1:100
num1

# 200~500까지 백터 만들기
num2 <- 200:500
num2

# 100~300, 400~500까지 백터 만들기
num3 <- c(100:300,400:500)
num3

# 1 3 5 7 .. 99까지 백터 만들기 1~100까지 증가치 2인 백터 만들기
# 도움말 help(함수명)
help(seq)
seq(from=1, to=100, by=2) #정식적인 형식
seq(1, 100, 2) #약식

# 99 .. 1까지 
seq(from=99, to=1, by=-2)

# rep
help(rep)
rep(1:4, 2)
rep(1:4, each=2)
rep(1:4, c(2,3,4,5))
rep(1:4, each = 2, length.out = 4)

# 연습문제 5
vc.2 <- seq(100,200,2)
vc.2 

# 연습문제 6
vc.3 <- rep(TRUE,20)
vc.3

# 백터에 이름 지정하기
score <- c(90,85,70)
score
names(score) #백터의 이름 출력하기
# 백터에 이름을 넣기
names(score) <- c('김수진','이영미','최진수')
names(score)
score

# 부분적으로 출력
score[1] #인덱스로 검색
score['이영미'] #이름으로 검색
score[3]
score['최진수']
score[4]
score['최영미']
score[2:3]
score[c('이영미','최진수')]

v1 <- c(1,5,7,8,9)
v1

v1[2] <- 3
v1

# 1번 5번 인덱스값 바꾸기
v1[c(1,5)] <- c(10,20)
v1

x <- 10:15
y <- 20:25
x
y
x+y
x*y
x1 <- 10:14
y1 <- 20:26
x1+y1

d <- 1:10
sum(d)
sum(2*d)
length(d)
mean(d)
max(d)
min(d)
sort(d)
sort(d,decreasing = T)
sort(d,decreasing = F)
help(sort)

d <- 1:9
d[d>5]
d[d<5]
d[d==5]
d[d!=5]
# 5~8
d[d>5 & d<8]

# 연습문제 7
d <- 100:200
d
d[10]
d[1:90]
d[-c(90:100)]
d[seq(2,100,by=2)]
d[d%%2==1]
d[d%%3==0]
d.20 <- d[-c(1:20)]
d.20
d.20[-5]
d.20[-c(5,7,9)]

# 연습문제 8
absent <- c(10,8,14,15,9,10,15,12,9,7,8,7)
names(absent <- c('JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC'))
absent['MAY']
absent[c('JUL','SEP')]
sum(1:6)
mean(7:12)

# 연습문제 9
d1 <- 1:50
d2 <- 51:100
d1
d2
length(d2)
d1+d2
d2-d1
d1*d2
d2/d1
sum(d1)
sum(d2)
sum(d1+d2)
max(d2)
min(d2)
mean(d1)
mean(d2)
mean(d2-d1)
sort(d1,decreasing = T)
d1[1:10]
d2[1:10]
d3 <- c(d1[1:10],d2[1:10])
d3

# 연습문제 10
v1 <- 51:90
v1[v1<60]
length(v1[v1<70])
sum(v1[v1>65])
v1[v1>60 & v1<73]
v1[v1<65 | v1>80]
v1[v1%%7==3]
v1[v1%%7==0] <- 0
v1
sum(v1[v1%%2==0])
v1[v1%%2==1|v1>80]
v1[v1%%3==0 & v1%%5==0]
v1[v1%%2==0]*2
v2 <- v1[v1%%7!=0]
v2

# list
ds <- c(90,85,70,84)
my.info <- list(name="Tom", age=60, status=TRUE, score=ds)
my.info
my.info[[1]]
my.info[1]
my.info[2]
my.info$score
my.info[[3]]

# factor 범주형 자료(예 동서남북)를 저장할 때 사용
bt <- c('A','B','B','O','AB')
bt.new <- factor(bt)
bt.new
bt.new[1:3]
bt.new[-2] #2번째 인덱스 값 제외
levels(bt.new) #변수에 저장된 값 보기
as.integer(bt.new)
bt.new[6] <- 'A'
bt.new
bt.new[7] <- 'O'
bt.new[8] <- 'C'

nn <- c('동','서','남','북','북','북')
nn.new <- factor(nn)
levels(nn.new)
as.integer(nn.new)
nn.new[7] <- '동'
nn.new[8] <- 'North'
nn.new

# 연습문제 11
ds <- c('Mon','Wed')
people <- list(name="Bill", age=20, gender='M', student=TRUE, day=ds)
people

# 연습문제 12
a <- c('Korea','Japan','China','Korea','India','China','Korea')
a.new <- factor(a)
a.new
levels(a.new)
a.new[4]
as.integer(a.new)
