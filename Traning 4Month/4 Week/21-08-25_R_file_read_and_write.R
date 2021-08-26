# 파일 데이터 읽기/쓰기

setwd('D:/Temp')
air <- read.csv('airquality.csv', header = T) # heardeer = T : 첫번째 행은 값이 아닌 열의 이름을 뜻한다.
air

#     Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2
# 3    12     149 12.6   74     5   3
# 4    18     313 11.5   62     5   4
# 5    NA      NA 14.3   56     5   5
# 6    28      NA 14.9   66     5   6
# 7    23     299  8.6   65     5   7
# 8    19      99 13.8   59     5   8


my.iris <- subset(iris, Species == 'setosa')
my.iris
write.csv(my.iris, 'my_iris.csv', row.names = F)

# my_iris.csv파일에 다음과 같은 값이 저장된다.
#     Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1           5.1         3.5          1.4         0.2  setosa
# 2           4.9         3.0          1.4         0.2  setosa
# 3           4.7         3.2          1.3         0.2  setosa
# 4           4.6         3.1          1.5         0.2  setosa
# ...
# 46          4.8         3.0          1.4         0.3  setosa
# 47          5.1         3.8          1.6         0.2  setosa
# 48          4.6         3.2          1.4         0.2  setosa
# 49          5.3         3.7          1.5         0.2  setosa
# 50          5.0         3.3          1.4         0.2  setosa

# 복습문제

m <- c(10, 40, 60, 20)
f <- c(21, 60, 70, 30)
score <- cbind(m, f)
#       m  f
# [1,] 10 21
# [2,] 40 60
# [3,] 60 70
# [4,] 20 30

colnames(score) <- c('mael', 'female') 
score
#       mael female
# [1,]   10     21
# [2,]   40     60
# [3,]   60     70
# [4,]   20     30

score[2,] # 40, 60
score[,'female'] # 21, 60, 70, 30
score[3,2] # 70

st <- data.frame(state.x77)
st
colnames(st) # "Population" "Income"     "Illiteracy" "Life.Exp"   "Murder"     "HS.Grad"    "Frost"   "Area" 

row.names(st)
# [1] "Alabama"        "Alaska"         "Arizona"        "Arkansas"       "California"    
# [6] "Colorado"       "Connecticut"    "Delaware"       "Florida"        "Georgia"       
# [11] "Hawaii"         "Idaho"          "Illinois"       "Indiana"        "Iowa"          
# [16] "Kansas"         "Kentucky"       "Louisiana"      "Maine"          "Maryland"      
# [21] "Massachusetts"  "Michigan"       "Minnesota"      "Mississippi"    "Missouri"      
# [26] "Montana"        "Nebraska"       "Nevada"         "New Hampshire"  "New Jersey"    
# [31] "New Mexico"     "New York"       "North Carolina" "North Dakota"   "Ohio"          
# [36] "Oklahoma"       "Oregon"         "Pennsylvania"   "Rhode Island"   "South Carolina"
# [41] "South Dakota"   "Tennessee"      "Texas"          "Utah"           "Vermont"       
# [46] "Virginia"       "Washington"     "West Virginia"  "Wisconsin"      "Wyoming" 

dim(st) # 50, 8
str(st) # 요약정보 추출
rowSums(st) # 전체 행 더하기
rowMeans(st) # 전체 행 평균
colSums(st) # 전체 열 더하기
colMeans(st) # 전체 열 평균
st['Florida',] # 8277, 4815, 1.3, 70.66, 10.7, 52.6, 11, 54090
st[,'Income']
# [1] 3624 6315 4530 3378 5114 4884 5348 4809 4815 4091 4963 4119 5107 4458 4628 4669 3712 3545 3694
# [20] 5299 4755 4751 4675 3098 4254 4347 4508 5149 4281 5237 3601 4903 3875 5087 4561 3983 4660 4449
# [39] 4558 3635 4167 3821 4188 4022 3907 4701 4864 3617 4468 4566

st['Texas', 'Area'] # 262134
st['Ohio', c('Population', 'Income')] # 10735   4561
subset(st, Population>=5000) # 인구가 5000이상인 주
subset(st[,c('Population', 'Income', 'Area')], Income>=4500)
nrow(subset(st, Income>=4500)) # 26
subset(st, Area>=100000 & Frost>=120)
subset(st, Population<2000 & Murder<12)
mean(subset(st[, 'Income'], st[,'Illiteracy'] >=2.0)) # 3683.143
abs(mean(subset(st[, 'Income'], st[,'Illiteracy'] >= 2.0)) - mean(subset(st[, 'Income'], st[,'Illiteracy'] < 2.0))) # 875.1827
rownames(st[which.max(st$Life.Exp),]) # 기대수명('Life.Exp')이 가장 높은 주
rownames(subset(st, st['Pennsylvania', 'Income'] < st[,'Income'])) # Pennsylvania보다 수입(Income)이 높은 주
# st[,'Life.Exp] == st$Life.Exp

class(mtcars) # 자료구조
dim(mtcars) # 32 11
str(mtcars) # 자료형
help(mtcars)
rownames(subset(mtcars, mtcars[,'mpg'] == max(mtcars[,'mpg']))) # "Toyota Corolla"
subset(mtcars, mtcars[,'gear']==4)
rownames(subset(subset(mtcars, mtcars[,'gear']==4)), subset(mtcars, mtcars[,'gear']==4)[,'mpg'] == min(subset(mtcars, mtcars[,'gear']==4)[,'mpg']))
mtcars['Honda Civic', c('mpg', 'gear')] # 30.4    4
rownames(subset(mtcars, mtcars['Pontiac Firebird','mpg'] < mtcars[,'mpg']))
mean(mtcars[,'mpg']) # 20.09062
unique(mtcars[,'gear']) # 4 3 5

class(airquality) # "data.frame"
head(airquality)
colnames(subset(airquality, Temp == max(Temp))[c('Month','Day')]) #  8  28
max(subset(airquality, Month == 6 & Wind == max(Wind))[,'Wind']) # 20.7
mean(subset(airquality, Month == 7)[,'Temp']) # 83.90323
mean(subset(airquality, Month == 5 & Ozone != 'NA')[,'Temp']) # 66.73077
nrow(subset(airquality, Ozone > 100)) # 7

str(swiss)
head(swiss)
rownames(subset(swiss, swiss['Agriculture'] == max(swiss['Agriculture']))) # "Herens"
sort(as.matrix(swiss)[,'Agriculture'], decreasing = T)
subset(swiss[, c('Catholic', 'Agriculture')], Catholic >= 80)
subset(swiss[,c('Examination', 'Agriculture')], Agriculture < 50 & Examination < 20)

setwd('C:/Users/qwe/Documents/RStudio')
state.x77 = data.frame(state.x77)
a = subset(state.x77[,c('Income', 'Population', 'Area')], Income >= 5000)
a
write.csv(a, 'rich_state.csv')
ds = read.csv('rich_state.csv', header = T)
ds
