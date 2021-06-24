# ICT폴리텍대학 빅데이터 UI 훈련 과정

## 21-06-24

## 리눅스 명령어

### Shell 명령어

shell은 **사용자의 명령을 해석하고 kernel에게 전달**해주는 징검다리 역활이 shell이다. sehll은 **자체 프로그램의 기능**을 갖고 있어서 shell을 이용해서 변수와 if문을 사용할 수 있다.

먼저 $sudo vi ~를 이용해 args2.sh를 만든다. 그 다음 아래의 사진처럼 args2.sh에 변수를 입력해주고 wq로 저장하고 나간다. 그 다음 $source args2.sh 11 22 33 44를 입력하면 값이 나온다.

![캡처2](https://user-images.githubusercontent.com/76871728/123207228-06715280-d4f8-11eb-88eb-e824b41f8987.PNG)

![캡처1](https://user-images.githubusercontent.com/76871728/123207123-d4f88700-d4f7-11eb-9737-c2ef5502b765.PNG)

if문을 이용하는 방법도 있다. 우선 $sudo vi if.sh로 if.sh를 만들어 준다. 그 다음 아래의 사진처럼 if문을 입력해준다.(**띄어쓰기를 꼭 지켜야한다.**) 그 다음 source if.sh를 하면 값이 나오는 것을 확인할 수 있다.

![캡처3](https://user-images.githubusercontent.com/76871728/123207642-ad55ee80-d4f8-11eb-9b89-92acf8922b38.PNG)

![캡처5](https://user-images.githubusercontent.com/76871728/123207646-adee8500-d4f8-11eb-9fca-2e69e61825c8.PNG)

**args.sh로 배운 것과 if.sh 배운 것을 응용해보자.**

먼저 $sudo vi if2.sh를 만든다. 아래 사진처럼 if문을 입력한 다음 wq로 저장하고 나간다. 그다음에 $source if2.sh glory를 치면 if문이 뒤에 glory를 인식해서 hi~가 출력된다.

![캡처7](https://user-images.githubusercontent.com/76871728/123207957-2d7c5400-d4f9-11eb-8644-e6a9b1e34c48.PNG)

![캡처6](https://user-images.githubusercontent.com/76871728/123207954-2ce3bd80-d4f9-11eb-9dd7-b99aaa66da82.PNG)

### 리눅스 명령어로 c언어

맨 먼저 c-language파일을 만들고 그 안에 hello.c를 만들어서 아래 사진처럼 입력한 다음 저장하고 나간다.

![캡처9](https://user-images.githubusercontent.com/76871728/123208981-f018c600-d4fa-11eb-852a-23863c7495bf.PNG)

![캡처8](https://user-images.githubusercontent.com/76871728/123208982-f1e28980-d4fa-11eb-8191-def846ce8919.PNG)

그 다음 $gcc -o hello hello.c를 치면 gcc를 설치하라고 나온다 아래 사진과 같이 입력하고 설치하면 된다.

![캡처10](https://user-images.githubusercontent.com/76871728/123209189-3a01ac00-d4fb-11eb-9f2b-bdece406ebd7.PNG)

그 다음 다시 $gcc -o hello hello.c를 누르면 아래 사진처럼 초록글씨 hello가 나온다.

![캡처11](https://user-images.githubusercontent.com/76871728/123209240-4a198b80-d4fb-11eb-965f-40be9aa425e3.PNG)

./hello를 입력해보면 아래 사진처럼 값이 나온다.

![캡처12](https://user-images.githubusercontent.com/76871728/123210525-117ab180-d4fd-11eb-9c40-368fcf6ee57b.PNG)

이것처럼 원시 프로그램(Source Program, 고급언어)의 C언어를 번역(Compile)해주는 과정이 gcc를 사용한 다음, 번역하고 목적 프로그램(Object Program, 기계어)로 바꾸어준다.

### 리눅스 명령어로 파이썬

처음에 $sudo vi hello.py라는 파일을 만든다. 그 다음엔 아래 사진처럼 똑같이 입력해준 후 $sudo python3 hello.py를 입력하면

```
hello
7
```
위의 결과값이 출력되는 것을 확인할 수 있다.

![캡처14](https://user-images.githubusercontent.com/76871728/123212529-e34aa100-d4ff-11eb-872a-6b574c375068.PNG)

![캡처13](https://user-images.githubusercontent.com/76871728/123212523-e2197400-d4ff-11eb-8840-d285e9481a9d.PNG)

**이번엔 hello.sh파일을 만들어 hello파일들의 결과값을 가져오겠다.**

$sudo vi hello.sh파일을 생성한 후 아래 사진처럼 입력한 후 저장 나가기한다.

![캡처15](https://user-images.githubusercontent.com/76871728/123219850-522bf800-d508-11eb-876d-1af09cd55068.PNG)

다음은 절대경로를 통해서 들어가는 방법이다. 아래 사진처럼 hello.sh파일을 바꾸어준다.

![캡처16](https://user-images.githubusercontent.com/76871728/123220141-9d460b00-d508-11eb-8cca-9b8d497b45bb.PNG)

![캡처17](https://user-images.githubusercontent.com/76871728/123220171-a46d1900-d508-11eb-8a73-f8f1c9f281e7.PNG)

이번엔 파일을 다른 경로로 보낸 후 결과 값이 나오는지를 해본다.

![캡처18](https://user-images.githubusercontent.com/76871728/123220832-4856c480-d509-11eb-98a2-0afb7f2b5496.PNG)
![캡처19](https://user-images.githubusercontent.com/76871728/123220835-48ef5b00-d509-11eb-8eba-8435415497ef.PNG)

위의 사진처럼 다른 경로에서도 결과값이 나온다. 이처럼 shell은 어디서든 존재하기 때문에 경로를 옮겨줘도 해석하고 전달해서 결과값을 받을 수 있다.
