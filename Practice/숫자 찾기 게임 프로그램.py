import random

num = random.randint(1, 100)

guess = int(input("수치 입력 : "))

while guess != num:
    if guess > num :
        print('숫자가 큽니다.')
    else :
        print('숫자가 작습니다.')
    guess = int(input("수치 입력 : "))
print('정답입니다.')