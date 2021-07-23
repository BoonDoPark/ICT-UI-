# List
ds <- c(90,85,70,84)
my.info <- list(name='Tome', age=60, status=TRUE, score=ds)
'''  $name
[1] "Tome"
   $age
[1] 60
   $status
[1] TRUE
     $score
[1] 90 85 70 84'''
my.info
my.info[[1]] #"Tome"
my.info$name #"Tome"
my.info[[4]] #90 85 70 84

# factor
bt <- c('A','B','B','O','AB','A')
bt.new <- factor(bt)
bt #"A"  "B"  "B"  "O"  "AB" "A" 
bt.new #A  B  B  O  AB A, bt에 있는 값이 levels에 저장된 종류를 알려주는 것이다.
       #Levels: A AB B O
bt[5] #"AB"
bt.new[5] #AB
levels(bt.new) #"A"  "AB" "B"  "O", 팩터에 저장된 값들의 종류를 알아내는 함수이다.
as.integer(bt.new) #1 3 3 4 2 1, levels에 출력된 문자열의 순서대로 숫자로 바꾼다.
bt.new[7] <- 'B' 
bt.new[8] <- 'C'# NA, factor는 이미 지정된 값의 종류 외에 다른값을 막는다.
bt.new #A    B    B    O    AB   A    B    <NA>

d = 100:200
# 끝값부터 잘라내고 싶을 때 tail()함수
tail(d, 10) # 191 192 193 194 195 196 197 198 199 200
# 첫값부터 잘라내고 싶을 때 head()함수
d.20 = head(d, 20) #100 101 102 103 104 105 106 107 108 109 110 111 112 113
                   #114 115 116 117 118 119
d.20

v1 = 51:90       
v1[v1%%7==0] = 0
v1 #51 52 53 54 55  0 57 58 59 60 61 62  0 64 65 66 67 68 69
   #0 71 72 73 74 75 76  0 78 79 80 81 82 83  0 85 86 87 88
   #89 90
v1 = 51:90
# R에서는 or은 |이다. \+Shift
v1[v1%%2==1 | v1>80] #51 53 55 57 59 61 63 65 67 69 71 73 75 77 79 81 82 83 84
                     #85 86 87 88 89 90
# 7배수들을 제거한 후의 내용
v1[v1%%7 != 0] #51 53 55 57 59 61 63 65 67 69 71 73 75 77 79 81 82 83 84
               #85 86 87 88 89 90

