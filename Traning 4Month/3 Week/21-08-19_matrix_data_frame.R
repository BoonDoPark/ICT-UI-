# 데이터 분석에서는 1차원 데이터보단 2차원 데이터를 더 많이 접한다.
# 2차원 데이터는 매트릭스(matrix)와 데이터프레임(data frame)이라는 형태의
# 변수에 저장한 후 분석하게 된다.
# 매트릭스의 개념, 데이터테이블에서 가로줄은 행(row), 관측값(observation)
# 세로줄은 열(column), 변수(variable)라고 한다. 상호 교차에 만들어진 영역을
# 셀(cell)이라고 한다.

z <- matrix(1:20, nrow = 4, ncol = 5)
z
      [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

# 매트릭스에 저장될 값들을 행 방향으로 순으로 채운다.
# byropw는 기본적으로 FALSE값을 가지고 있다.
z1 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z1
      [,1] [,2] [,3] [,4] [,5]
[1,]    1    2    3    4    5
[2,]    6    7    8    9   10
[3,]   11   12   13   14   15
[4,]   16   17   18   19   20

# 2두개의 벡터를 매트릭스로 바꾸기
x <- 1:4
y <- 5:8

#  열 방향으로 매트릭스 생성
m1 <- cbind(x, y)
m1
[1,] 1 5
[2,] 2 6
[3,] 3 7
[4,] 4 8

# 행 방향으로 매트릭스 생성
m2 <- rbind(x, y)
m2
  [,1] [,2] [,3] [,4]
x    1    2    3    4
y    5    6    7    8

m3 <- rbind(m2,x)
m3
  [,1] [,2] [,3] [,4]
x    1    2    3    4
y    5    6    7    8
x    1    2    3    4

m4 <- cbind(m1, y)
m4
     x y y
[1,] 1 5 5
[2,] 2 6 6
[3,] 3 7 7
[4,] 4 8 8
     
z1 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z1
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    2    3    4    5
[2,]    6    7    8    9   10
[3,]   11   12   13   14   15
[4,]   16   17   18   19   20

#인덱스를 통해 값을 가져올수 있다. matrix[row, column]
z1[2, 3] # 8
z1[2,] # 6 7 8 9 10
z1[,4] # 4 9 14 19
z1[1,c(1,2,4)] # 1 2 4
z1[2, 1:3] # 6 7 8
z1[1:2,]
      [,1] [,2] [,3] [,4] [,5]
[1,]    1    2    3    4    5
[2,]    6    7    8    9   10

z1[,c(1,4)]
     [,1] [,2]
[1,]    1    4
[2,]    6    9
[3,]   11   14
[4,]   16   19

# 데이터프레임의 개념, 매트릭스와 같지만,
# 서로 다른 자료형의 값들이 함께 저장가능하다.(column단위로)

iris # 기본적으로 있는 데이터셋이다.
# sepal = 꽃받침, petal = 꽃, species = 품종

    Sepal.Length Sepal.Width Petal.Length Petal.Width  Species
1            5.1         3.5          1.4         0.2   setosa
2            4.9         3.0          1.4         0.2   setosa
3            4.7         3.2          1.3         0.2   setosa
4            4.6         3.1          1.5         0.2   setosa
5            5.0         3.6          1.4         0.2   setosa
...

dim(iris) # 행의 개수 150, 열의 개수 5
nrow(iris) # 150
ncol(iris) # 5
colnames(iris) # "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width" "Species"
head(iris) # 데이터셋 앞부분 일부 출력
tail(iris) # 데이터셋의 뒷부분 일부 출력
str(iris) # 데이터셋 정보, 값 일부 보기
unique(iris[,5]) # 품종 종류 보기
table(iris[,'Species']) # 품종별 행의 개수 세기
colSums(iris[,-5]) # 열별 합계
colMeans(iris[,-5]) # 열별 평균
rowSums(iris[,-5]) # 행별 합계
rowMeans(iris[,-5]) # 행별 평균

# 행과 열의 방향 전환
z <- matrix(1:20, nrow = 4, ncol = 5)
z
t(z) # 행과 열 방향 전환

# 조건에 맞는 행과 열의 값 추출
# subset()함수는 매트릭스에선 잘 작동되지 않을 수 있으므로,
# 데이터프레임으로 변환후 실행한다.
IR.1 <- subset(iris, Species=='setosa')
IR.1
IR.1[,c(2,4)] # 2 ,4열의 값만 추출

#매트릭스와 데이터프레임에 대한 산술연산
a <- matrix(1:20, 4, 5)
b <- matrix(21:40, 4, 5)

# 동일 위치에 있는 값들끼리 더하고,
# 두 매트릭스의 크기(행과 열의 개수)가 같아야 한다.
a+b
     [,1] [,2] [,3] [,4] [,5]
[1,]   22   30   38   46   54
[2,]   24   32   40   48   56
[3,]   26   34   42   50   58
[4,]   28   36   44   52   60

# 매트릭스와 데이터프레임의 자료구조 확인
class(iris) # "data.frame"
class(state.x77) # "matrix" "array"
is.matrix(iris) # FALSE
is.data.frame(iris) # TRUE

# 매트릭스를 데이터프레임으로 변환
head(state.x77)
st <- data.frame(state.x77)
head(st)
class(st)

# 데이터프레임을 매트릭스로 변환
iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)