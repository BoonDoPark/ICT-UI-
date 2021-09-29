# if-else문
# if(비교조건){
# 조건이 참일 때 실행할 명령문
#}else{
# 조건이 거짓일 때 실행할 명령문
#}

job.type <- 'A'
if(job.type == 'B'){
  bonus <- 200
} else{
  bonus <- 100
}
print(bonus) # 100

# 다중 if-else문
score <- 85
if (score>90){
  grade <- 'A'
} else if (score>80){
  grade <- 'B'
} else if (score>70){
  grade <- 'C'
} else {
  grade <- 'D'
}
print(grade) # "B"

# 논리연산자 사용
a <- 10
b <- 20
if(a>5&b>5){
  print(a+b)
}
# 30
if (a>5 | b>30){
  print(a*b)
}
# 200

# 조건에 따라 두 값 중 하나를 선택하는 경우
c <- ifelse(a>b, a, b)
print(c) # 20

# for문
# for(반복 변수 in 반복 범위){
# 반복할 명령문
#}

for(i in 1:5){
  print(i)
} # 1, 2, 3, 4, 5

# for문에서 if문 사용
for(i in 1:20){
  if(i%%2==0){
    print(i)
  }
} # 2, 4, 6, 8, 10, 12, 14, 16, 18, 20

# iris에서 꽃잎의 길이에 따른 분류 작업
norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow){
  if (iris$Petal.Length[i] <= 1.6){
    mylabel[i] <- 'L'
  } else if(iris$Petal.Length >= 5.1){
    mylabel[i] <- 'H'
  } else{
    mylabel[i] <- 'M'
  }
}

print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel)
head(newds)
#iris    Petal.Length mylabel

#1               1.4       L
#2               1.4       L
#3               1.3       L
#4               1.5       L
#5               1.4       L
#6               1.7       M

# while문
sum <- 0
i <- 1
while(i<=100){
  sum <- sum+i
  i <- i+1
}
print(sum) # 5050

# break와 next
sum <- 0
for(i in 1:10){
  sum <- sum+i
  if (i>=5) break
}
sum # 15

# next
sum <- 0
for(i in 1:10){
  if (i%%2==0) next
  sum <- sum+i
}
sum # 25

