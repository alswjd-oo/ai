# 1 
head(cars)
class(cars)
dim(cars)
str(cars)
plot(cars$speed, cars$dist)
cor(cars$speed, cars$dist)
# 해설 - 속도가 증가할수록 제동거리가 증가한다.

# 2
plot(pressure$temperature,pressure$pressure)
# 해설 - 온도와 기압은 비례관계이다. 0~250도까지는 동일하지만 250도 이상이면 급격하게 증가한다
cor(pressure$temperature,pressure$pressure)

# 3
head(swiss)
pairs(swiss[,1:4])
cor(swiss[,1:4])

# 4 
plot(iris$Species, iris$Petal.Width, pch=as.integer(iris$Species),
     col=c('red','green','blue'))
# 5
income <- c(121,99,25,35,40,30,150,24,50,60)
period <- c(19,20,16,16,18,12,24,12,16,17)
plot(income,period)
cor(income,period)
# 해설 - 수입이 높을수록 교육기간이 길다.

# 6
humidity <- c(56,67,89,91,53,41,46,71,80,92)
rentalAmount <- c(92510,74801,27168,33929,89807,92153,92045,75328,48756,21875) 
plot(humidity, rentalAmount)
cor(humidity, rentalAmount)
# 해설 - 습도가 높을수록 자전거 대여량이 적다.

# 7 
head(state.x77)
cc <- cor(state.x77)
cc[,2]
# HS Grad

# 8 
year <- c(2015:2026)
totalPopulation <- c(51014,51245,51446,51635,51811,51973,52123,52261,52388,52504,52609,52704)
plot(year, totalPopulation, main = '2015년부터 2020년도까지의 예상 인구수',
     xlab='연도', ylab='총 인구수', type = 'b',col='red',ylim = c(51000,53000))

# 9
year <- c(20144,20151,20152,20153,20154, 
          20161,20162,20163,20164,
          20171,20172,20173)
male <- c(73.9,73.1,74.4,74.2,73.5,73,
          74.2,74.5,73.8,73.1,74.5,74.2)
female <- c(51.4,50.5,52.4,52.4,51.9,50.9,
            52.6,52.7,52.2,51.5,53.2,53.1)
plot(year,man, main='남녀 경제활동 참가율',
     xlab = '연도', ylab = '성별', type='b', col='red', xlim = c(20140,20180),ylim = c(50,75))
lines(year,femail, type='b', col='blue')

# 10
head(trees)
plot(trees$Girth, trees$Height)
cor(trees$Girth, trees$Height)
pairs(trees)
cor(trees)

# 11
head(Orange)
color <- c('red','green','blue')
pairs(Orange, col=color)

# 12-1
library(mlbench)
data("Glass")
head(Glass)
myds <- Glass

# 12-2
pairs(myds[,1:9])

# 12-3
cor(myds[,1:9])

# 12-4
plot(myds[,1:9], col=myds$Type)

# 14
head(LakeHuron)
class(LakeHuron)
str(LakeHuron)
dim(LakeHuron)
length(LakeHuron)

years <- 1875:1972
hlevel <- as.vector(LakeHuron)
plot(years, hlevel, main = 'LankHuron',
     type = 'l', col='blue', ylab = '수위', xlab = '연도')

# 15
AirPassengers
head(AirPassengers)
month <- 1:12
#       시계열객체명, 시작연도, c(시작연도, 마지막달)
a <- window(AirPassengers, 1949, c(1949,12))
b <- window(AirPassengers, 1955, c(1955,12))
c <- window(AirPassengers, 1960, c(1960,12))

plot(month, a, main = '연도별 항공승객 수', type='b', col='red', ylim = c(100,650))
lines(month, b, type='b', col='green')
lines(month, c, type='b', col='blue')

# 16
USAccDeaths
head(USAccDeaths)
month <- 1:12
a <- window(USAccDeaths, 1973, c(1973,12))
b <- window(USAccDeaths, 1975, c(1975,12))
c <- window(USAccDeaths, 1977, c(1977,12))

plot(month, a, type = 'b', col='red', ylim = c(6500,12000), ylab = '사망자수')
lines(month, b, type = 'b', col='blue')
lines(month, c, type = 'b', col='green')

