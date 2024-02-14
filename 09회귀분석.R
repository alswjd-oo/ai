# 5-1
class(BostonHousing)
str(BostonHousing)
dim(BostonHousing)
# 종속변수: medv 독립변수: chas 제외한 나머지 변수들
ds <- BostonHousing[,-4] #데이터셋 준비
head(ds)
model.5 <- lm(medv~., data = ds) # 회귀식 y=wx + b
model.5 # y = -0.113139*crim + 0.047052*zn + 0.040311*indus + ... + 36.891960
summary(model.5)

# 5-2
library(MASS)
model.5.1 <- stepAIC(model.5)
summary(model.5.1)
y = -0.114056*crim + 0.045742*zn + -16.469153*nox + ... + 36.620311

# 5-3
summary(model.5)
summary(model.5.1)

# 6-1
head(mtcars)
class(mtcars)
str(mtcars)
dim(mtcars)
ds <- mtcars
model.6 <- lm(mpg~.,data = ds)
summary(model.6)

# 6-2
model.6.1 <- stepAIC(model.6)
summary(model.6.1)

# 6-3
summary(model.6)
summary(model.6.1)
# 결과 분석 보고서: 독립변수를 모두 사용한 model.6의 설명력은 0.8066이고, 
# 불필요한 독립변수를 제거한 모델 model.6.1의 설명력은 0.8336이므로 model.6.1을 채택한다.


# 로지스틱 회귀분석
# y값이 범주형인 것 분석하기 (범주형의 자료를 정수형으로 변환함)

# 예측하기 - 품종
head(iris)
class(iris)
dim(iris)
str(iris)
iris.new <- iris
# 범주형 자료를 숫자로 변환하기
iris.new$Species <- as.integer(iris.new$Species)
str(iris.new)

# 회귀식 구하기
# 종속변수: Species 독립변수: Sepal.Length, Sepal.Width, Petal.Length, Petal.Width
mod.iris <- glm(Species~., data = iris.new)
summary(mod.iris)
# 회귀식으로 써보기
y = 0.22865*Petal.Length + 0.60925*Petal.Width + 1.18650

# 예측하기
head(iris.new)
Petal.Length <- 1.4
Petal.Width <- 0.2
y = 0.22865*Petal.Length + 0.60925*Petal.Width + 1.18650
y # 1.62846

tail(iris.new)
Petal.Length <- 5.1
Petal.Width <- 1.8
y = 0.22865*Petal.Length + 0.60925*Petal.Width + 1.18650
y # 3.449265
summary(mod.iris)

# predict() 함수로 품종 예측하기
unknown <- data.frame(rbind(c(5.1, 3.5, 1.4, 0.2))) #예측하고싶은 독립변수의 값을 넣기
unknown
names(unknown) <- names(iris)[1:4]
unknown
pred <- predict(mod.iris, unknown) #predict(데이터셋, 예측하려는 x값들)
pred
pred <- round(pred,0)
pred

Sepal.Length <- 5.1
Sepal.Width <- 3.5
Petal.Length <- 1.4
Petal.Width <- 0.2

y = -0.11191 * Sepal.Length + -0.04008 * Sepal.Width +  0.22865 * Petal.Length +  0.60925 * Petal.Width + 1.18650
y
y <- round(y,0)
y

# 7-1
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
mydata
mod.mydata <- glm(admit~., data = mydata)
summary(mod.mydata)

# 7-2
pred.val <- data.frame(mydata[,2:4])
pred.val
pred <- predict(mod.mydata,pred.val)
pred
pred <- round(pred,0)
pred
head(pred)
head(mydata$admit)

result <- data.frame(예측값=pred, 실제값=mydata$admit, 오차= pred - mydata$admit )
# 맞게 예측한 개수
sum(result$예측값 == result$실제값)
# 틀리게 예측한 개수
sum(result$예측값 != result$실제값)

# 7-3
acc <- mean(result$예측값 == result$실제값)
acc

# 8-1
library(mlbench)
data("PimaIndiansDiabetes")
head(PimaIndiansDiabetes)
# 1단계 diabetes변수의 자료를 숫자형으로 바꾸기
ds <- PimaIndiansDiabetes
ds$diabetes <- as.integer(ds$diabetes)
head(ds)
# 2단계 임의로 60%를 추출
set.seed(100)
train.index <- sample(1:nrow(ds), nrow(ds)*0.6) #766개 중에서 460개의 행의 번호를 뽑음 
head(train.index)

train <- ds[train.index,]
head(train)

test <- ds[-train.index,]
head(test)

# 8-2
model.dia <- glm(diabetes~., data = train)
summary(model.dia)

y = 0.0211082 * pregnant + 0.0065026 * glucose -0.0023262 * pressure +  0.0123455 * mass + 0.1599404 * pedigree + 0.1158979

# 8-3
pred <- predict(model.dia, test)
head(pred)
pred <- round(pred,0)
head(pred)
head(ds$diabetes)

# 8-4
acc <- mean(pred == test$diabetes)
acc
# 결과: 모델은 74.67%의 정확도로 예측할 수 있다.

# 9-1 
library(mlbench)
data("Glass")
Glass$Type <- as.integer(Glass$Type)
set.seed(100)
train.index <- sample(1:nrow(Glass),nrow(Glass)*0.6)
train <- Glass[train.index,]
head(train)
test <- Glass[-train.index,]
head(test)

# 9-2
head(Glass)
model.type <- glm(train$Type~.,data = train)
summary(model.type)

y = 130.69743 * RI + 0.53712 * Na -0.52967 * Mg + ... + -233.21655

# 9-3
pred <- predict(  model.type, test )
pred 
pred <- round( pred, 0 )
head( pred )
head( test )

# 9-4
acc <- mean(pred == test$Type)
acc

# 보고서 : 모델의 정확도는 0.48이다. 낮은 정확도이므로 다시 모델을 정립할 필요가 있다. 
# 독립변수를 다시 정비할 필요가 있다.