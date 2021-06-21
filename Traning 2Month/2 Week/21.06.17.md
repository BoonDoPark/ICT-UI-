# ICT폴리텍대학 빅데이터 UI 훈련 과정

## 21-06-17

### Ip(Internet Protocol)

ip는 컴퓨터 네트워크에서 장치들이 통신하기 위한 특수한 번호이다. ip주소는 통신에 필요한 고유 주소이며, ipv4, ipv6 두가지 체계가 있다.

1. IPv4
32비트의 값을 가진다. 8비트씩 끊어 0~255의 10진수를 나타내며, dot(.)으로 나뉜다. ipv4dml ip는 한정되어 있어 모든 Host에게 고유의 ip를 얻지 못한다.
그래서, 한 Host가 컴퓨터를 키면 ip를 할당, 컴퓨터를 끄면 ip를 회수한다.

2. IPv6
128비트의 값을 가진다. 4자리의 16진수 8개로 표시하며, colon(:)으로 나뉜다. 통신이 기기마다 하나의 공인ip를 주어도 고갈되지않는다.

### 우분투(Ubuntu)와 윈도우(Window) IP고정

왼쪽하단 시작버튼을 오른쪽을 한 후 [네트워크 연결]에 들어가서 본인 인터넷 ip를 확인한다.

![캡처](https://user-images.githubusercontent.com/76871728/122336516-f4cc0000-cf77-11eb-88dc-f33a52d83fea.PNG)

그 다음 리눅스로 들어가서 terminal에서 ifconfig를 눌러준다.

![캡처1](https://user-images.githubusercontent.com/76871728/122336542-fdbcd180-cf77-11eb-8c81-4747890b785d.PNG)

그러면 위 사진처럼 리눅스의 ip주소가 나옵니다. 그리고 sudo /etc/..을 사진처럼 입력하면 동그라미가 표시된 부분이 나오고 본인의 이름과 ip주소,gateway와 DNS를 적어서 저장하면 아래 사진처럼 나온다. 

![캡처2_LI (2)](https://user-images.githubusercontent.com/76871728/122336926-89cef900-cf78-11eb-9774-ca0da72948bf.jpg)

그다음 sudo nmcli networking off/on(restart해줘도 좋다.)을 해주면 ip주소가 바뀌는걸 볼 수 있다.

![캡처3_LI](https://user-images.githubusercontent.com/76871728/122336689-3066ca00-cf78-11eb-8e6e-52c6911eef4c.jpg)

위 사진처럼 리눅스의 ip가 바뀌는 걸 확인 할수 있다.

### ip주소로 다른 호스트로 들어가기

아래 사진의 ip주소를 쓰면 타 호스트를 연결할 수 있다.

![캡처4_LI](https://user-images.githubusercontent.com/76871728/122344863-35307b80-cf82-11eb-932b-75bbc9e1e980.jpg)

지난 시간에는 텍스트를 읽기만 가능했지만 ip주소로 연동하면 파일을 만들수 있고, txt도 만들수 있다.
반대로 연동되어있는걸 해제하고 싶으면 아래 사진으로 하면 된다.

![캡처5](https://user-images.githubusercontent.com/76871728/122345991-72e1d400-cf83-11eb-88ce-96d3a6b585ed.PNG)

반대로 타 호스트가 연결할 수 있다.. 이 방법은 아래 사진들을 보면 된다. 1번째 사진은 sudo vi /etc/exports을 입력하면, 두번째 사진이 뜬다. 두번째사진에서 9번째 줄에 허용할 ip주소를 생성해서 저장하고 종료한다. 잘 연결되었는지 확인하기 위해 asd.txt파일을 생성했다. 3번째는 재시작을 하면 나의 mnt/boondo파일안에 있는 asd.txt를 내가 허용한 타 호스트가 볼 수 있다.

![캡처9](https://user-images.githubusercontent.com/76871728/122364477-c14b9e80-cf94-11eb-875e-594603d48f23.PNG)

![캡처10](https://user-images.githubusercontent.com/76871728/122364528-cb6d9d00-cf94-11eb-90e1-5e4bcaaa9710.PNG)

![캡처6](https://user-images.githubusercontent.com/76871728/122356383-b5a8a980-cf8d-11eb-91c1-95d04e7894b0.PNG)

### 와일드카드(Wild Cark)

?가 나오는데 ?은 그 자리수를 채워준다. m??은 m으로 시작하는 문자 3자리인 파일을 찾아준다. 파일경로를 모를때 쉽게 찾을 수 있게 해준다.

![캡처7](https://user-images.githubusercontent.com/76871728/122360069-11286680-cf91-11eb-9c08-3828b25088da.PNG)

m*은 m으로 시작하는 모든 파일을 불러준다. *문자는 문자로 끝나는 모든 파일을 불러준다. 파일경로를 모를때 쉽게 찾을 수 있지만, 범위가 광범위하다는 단점이 있다.

![캡처8](https://user-images.githubusercontent.com/76871728/122360503-65334b00-cf91-11eb-9d7d-675bd9c2f744.PNG)
