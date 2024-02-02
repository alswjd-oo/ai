# 매트릭스와 데이터프레임

# 매트릭스
z <- matrix(1:30,nrow=5, ncol=6, byrow=T)
z
z <- matrix(101:200, nrow=10, ncol=10)
z

x <- 1:5 # 1차원 벡터
y <- 8:12 # 1차원 벡터
x
y
# 2차원 매트릭스
# 칸(col)으로 합치기
sum.xy <- cbind(x, y)
sum.xy

# 줄(row)로 합치기
sum1.xy <- rbind(x, y)
sum1.xy

# 1~5
# 101~105
# 201~205

x <- 1:5
y <- 101:105
z <- 201:205
bind.xyz <- rbind(x, y, z)
bind.xyz

# 1-1
# 한 행씩 만들어서 합치기
v1 <- c(12:9)
v2 <- c(8:5)
v3 <- c(4:1)
z <- rbind(v1, v2, v3)
z

# 매트릭스로 한번에 만들기
z <- matrix(12:1, nrow=3, ncol=4, byrow = T)
z
row.names(z) <- c('v1','v2','v3')
z

# 5를 검색하기
z[2,4]
# 3을 검색하기
z[3,2]

# 1행 꺼내기
z[1,]
# 2열 꺼내기
z[,2]
# 1행,3행 꺼내기
z[c(1,3),]
# 2열,4열 꺼내기
z[,c(2,4)]
# 2~4열 꺼내기
z[,2:4]

# 행이름 주기
# 열이름 주기
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4, ncol=3)
score
rownames(score) <- c('Jon','Tom','Mark','Jane')
colnames(score) <- c('Eng','Math','Science')
score

score[2,2]
score['Tom','Math']
score[4,3]
score['Jane','Eng'] # score[4,1]
# Tom의 점수는
score['Tom',]
# 수학 점수는
score[,'Math']
# 수학 점수의 평균
mean(score[,'Math'])
# 학생의 이름
rownames(score)
# 과목명
colnames(score)
# 2번째 학생명은
rownames(score)[2]
# 3번째 과목명은
colnames(score)[3]

# 1-1
z <- matrix(12:1, nrow = 3, ncol = 4, byrow = T)
z
rownames(z) <- c('v1','v2','v3')
z

# 1-2
colnames(z) <- c('a1','a2','a3','a4')
z

# 1-3
v4 <- seq(1,7,2)
z <- rbind(z,v4)
z

# 1-4
z[4,]

# 1-5
z[2:4,c('a1','a3')]

# 1-6
rownames(z)[3]

# 1-7
colnames(z)[3]

# 데이터 프레임
city <- c('서울','도쿄','워싱턴')
rank <- c(1,3,2)
etc <- c(TRUE, TRUE, FALSE)
city.info <- data.frame(city,rank,etc)
city.info
city.info[2, 'city']
city.info[1, 'rank']
rownames(city.info)
colnames(city.info)

# 행과 열을 바꾸기
t(city.info) 

iris
head(iris, n=10)
tail(iris)

head(iris, c(1:2))
head(iris[,'Petal.width'])

dim(iris) # 행의 갯수, 열의 갯수
str(iris) # 구조
iris[,5]
unique(iris[,5]) # 중복 제거
table(iris[,"Species"]) # 품종 별로 갯수 세기

colSums(iris[,-5]) # 5번째 열이 수치가 아니여서
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])
rowMeans(iris[,'Species']) # 오류 발생

# 2-1
st <- data.frame(state.x77)

# 2-2
st

# 2-3
colnames(st)

# 2-4
rownames(st)

# 2-5
dim(st)

# 2-6
head(st)

# 2-7 
rowSums(st)
rowMeans(st)

# 2-8
colSums(st)
colMeans(st)

# 2-9
st['Florida',]

# 2-10
st[,'Income']

# 2-11
st['Texas','Area']

# 2-12
st['Ohio', c('Population','Income')]

# 2-13
subset(st, Population >= 5000)

# 2-14
subset(st, Income >=4500)[,c('Population','Income','Area')]

# 2-15
nrow(subset(st, Income >=4500))

# 2-16
subset(st, Area >= 100000 & Frost >= 120)

# 2-17
subset(st, Population < 2000 & Murder <12)

# 2-18
mean(subset(st, Illiteracy >= 2.0)[,'Income'])

# 2-19
mean(subset(st, Illiteracy < 2.0)[,'Income'])-mean(subset(st, Illiteracy >= 2.0)[,'Income'])

# 2-20
max(st[,'Life.Exp'])
rownames(subset(st, Life.Exp == max(st[,'Life.Exp'])))

# 2-21
Pen.Income <- st['Pennsylvania','Income']
subset(st, Income >= Pen.Income)
rownames(subset(st, Income >= Pen.Income))

# 2.5 연산자
a <- matrix(1:20,4,5)
a
b <- matrix(21:40, nrow = 4, ncol = 5)
b

2*a
b-5
a+b

class(iris)
class(state.x77)
class(islands)
class(lh)

is.matrix(iris)
is.data.frame(iris)

# 매트릭스(자료형이 동일한 2차배열) <-- --> 데이터프레임셋(자료형이 다른 2차배열)
st <- data.frame(state.x77) # 매트릭스(자료형이 동일한 2차배열) --> 데이터프레임셋(자료형이 다른 2차배열)
class(st)
class(iris)
as.im <- as.matrix(iris[,-5]) # 데이터프레임셋(자료형이 다른 2차배열) <-- 매트릭스(자료형이 동일한 2차배열) 
class(as.im)

# 열추출하기
class(iris)
class(state.x77)
iris[,'Species'] #열이름으로 검색

head(state.x77)
state.x77[,'Area'] #열이름으로 검색

iris[,5] #인덱스로 검색
state.x77[,8] #인덱스로 검색
 
iris['Species'] #열이름으로 검색 -> 데이터프레임만 가능
state.x77['Area'] # 메트릭스는 불가능

iris[5] #인덱스로 검색 -> 데이터프레임만 가능
state.x77[8] # 불가능

iris$Species #데이터 프레임만 가능
state.x77$Area #불가능

# 3-1
name <- c('Tom','Jane','Nick')
age <- c(20,23,26)
gender <- c('M','F','M')
height <- c(180,160,175)
student <- c(TRUE,TRUE,FALSE)
human <- data.frame(name,age,gender,height,student)
human

# 3-2
human.new <- list(name='Mary',age=24,gender='F',height=155,student=TRUE)
human <- rbind(human,human.new)
human

# 3-3
str(human)

# 3-4
mean(human[,'age'])
mean(human[,'height'])

# 3-5
colnames(human[,-4])

# 3-6
table(human$gender)

# 파일 불러오기
setwd('D:/ai/study/r_study') #파일 불러올 경로명
air <- read.csv('airquality.csv')
air
class(air)

air2 <- read.csv('D:/ai/study/r_study/airquality.csv')
head(air)
air2['Ozone']

air3 <- read.csv(file.choose()) #대화상자로 열어서 파일 불러오기
head(air3)

# iris에서 Sqecies == 'setosa'인 것만 저장하기
iris.setosa <- subset(iris, Species == 'setosa')
write.csv(iris.setosa,'irisfilesame.csv')
         #저장할 자료,파일명

# 첫째 열에는 열 번호가 있다 이 부분을 저장에서 제외하고 싶다.
write.csv(iris.setosa, 'irisfile.csv', row.names = F)

# write.csv(iris.setosa, file.choose()) 안된다
