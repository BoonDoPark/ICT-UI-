# 로또번호 알기
import random

lotto = []
for i in range(0, 45):
    lotto.append(i + 1)

for i in range(1, 1000):
    a = random.randint(0, 44)
    b = random.randint(0, 44)

    temp = lotto[a]
    lotto[a] = lotto[b]
    lotto[b] = temp

print(lotto[0 : 6])
