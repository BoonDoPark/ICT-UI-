# 연속적인 숫자로 이루어진 벡터의 생성 = int:int
v1 = 50:90 # 변수를 지정할때 '='도 가능하고 '<-'도 가능하다.
v1 # 50 51 52 53 ... 88 89 90

# 일정한 간격의 숫자로 이루어진 벡터 생성
v2 = seq(1, 101, 3) 
v2 # 1 4 7 10 ... 91 94 97 100

# 반복된 숫자로 이루어진 벡터 생성
v3 = rep(c(1, 5, 9), times=3)
# c()함수는 여러 개의 값을 묶어주는 역활을 한다. connect의 첫 자를 따온 것이다.
v3 # 1 5 9 1 5 9 1 5 9
v4 = rep(c(1, 2, 3), each=2) # each 반복할때 하나하나를 정해진만큼 반복한다.
v4 # 1 1 2 2 3 3

# 벡터에 원소값에 이름 지정
score = c(90,85,70)
score # 90 85 70
names(score)
names(score) = c('John', 'Tom', 'Jane')
names(score)
score # John  Tom Jane 
      #   90   85   70 
      # 2차원으로 값이 나온다.

# 벡터에서 원소값 추출
# Index로 값을 불러올 수 있다.
d = c(1,4,3,7,8) 
d[c(1,3,5)] # 1 3 8
d[1:3] # 1 4 3
d[seq(1,5,2)] # 1 3 8
d[-2] # 1 3 7 8 d[-int]을 제외한 값
d[-c(3:5)] # 1 4
d[6] # Index에 값이 없는 경우 NA값으로 출력.

# 벡터에서 여러 개의 값을 한번에 추출하기
gnp = c(2090, 2450, 960)
names(gnp) = c('Korea', 'Japan', 'Nepal')
gnp# Korea Japan Nepal 
   #  2090  2450   960 
gnp[1] # Korea 
       #  2090
gnp['Korea'] # Korea 
             #  2090
gnp[c('Japan', 'Nepal')] # Japan Nepal 
                         #  2450   960

# 벡터에서 이름으로 값을 추출하기
v1 = c(1,5,7,8,9)
v1
v1[2] = 3
v1 # 1 3 7 8 9
v1[c(1,5)] = c(10,20)
v1 # 10  3  7  8 20

# 벡터의 연산
d = c(1:10)
sum(d) # 55
length(d) # 10
mean(d[1:5]) # 3
max(d) # 10
min(d) # 1
sort(d) # 1  2  3  4  5  6  7  8  9 10
# sort(변수, TRUE or FALSE)도 가능하다.
sort(d, decreasing = TRUE) # 10  9  8  7  6  5  4  3  2  1
median(d) # 5.5
sum(d)/length(d) # 5.5

# 벡터의 논리연산자 적용
d = c(1:9)
d>=5 # FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
d[d>5] # 6 7 8 9

# sum()함수는 합계를 구하는 함수이다. d>5를 출력하면 6,7,8,9가 나와야하는데 왜 4가 나올까?
# 그 이유는 논리연산이기 때문에 값이 FALSE, TRUE로 나오기 때문이다.
# FALSE=0, TRUE=1로 숫자를 주기 때문에 sum(d>5)는 4값이 나온다.
sum(d>5) # 4
sum(d[d>5]) # 30
d==5 # FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
d>5 & d<8 # FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE