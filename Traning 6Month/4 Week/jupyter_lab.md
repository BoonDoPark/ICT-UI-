# ICT폴리텍대학 빅데이터 UI 훈련 과정

## 21-11-15

## Jupyter lab

### anaconda prompt로 가상환경 만들기

1. conda 버전 확인 및 가상환경 설정

![캡처1](https://user-images.githubusercontent.com/76871728/141726248-92cc3b13-dd49-41db-b6ab-e1c7d7994d52.PNG)

![캡처2 (2)](https://user-images.githubusercontent.com/76871728/141726403-3f3a6317-1b65-4ba7-8587-74665ea0074f.PNG)

![캡처3](https://user-images.githubusercontent.com/76871728/141726428-17d89ae0-6bb5-4824-8d77-7b38f3fdae0d.PNG)

2. 가상환경 확인

![캡처4](https://user-images.githubusercontent.com/76871728/141726489-914339f6-70fd-4cf2-8e71-fd169f7eaebc.PNG)

3. ipykernel 라이브러리 다운로드

![캡처5](https://user-images.githubusercontent.com/76871728/141726574-1ef1ebc9-35ae-4e5d-a17f-c2044d15fa1d.PNG)

### Jupyter Lab 파일 경로 바꾸기

anaconda prompt에 jupyter lab을 입력하면 아래 사진처럼 Jupyter ab이 나오는 것을 확인할 수 있다.

![캡처6](https://user-images.githubusercontent.com/76871728/141726855-3195252e-cf32-4087-8014-2ddcb4bf78c5.png)
 
하지만, 실행시킨 경로에 Jupyter Lab이 생성된다. 그래서, 자기가 쓰는 파일로 바꾸고 싶은 파일경로로 만들고 싶을 때는 아래 사진처럼 명령어로 치면 jupyter_notebook_config.py의 경로가 나온다. 그대로 복사해서 메모장이나 파이참으로 들어간다.
 
![캡처8](https://user-images.githubusercontent.com/76871728/141727082-f00c3b29-0964-4e19-ba12-1943c292e278.PNG)

아래 사진처럼 385줄의 c.NotebookApp.notebook_dir = ''의 부분을 자기가 사용하는 파일경로로 넣어준 후 저장한다.

![캡처7](https://user-images.githubusercontent.com/76871728/141727190-7fb65bb0-4dd2-4dda-b92b-43609ccc7024.PNG)

그 후 다시 anaconda prompt 명령어에 jupyter lab을 쓰면 자기가 사용하고 싶은 파일경로로 Jupyter Lab이 생성된다.

![캡처9](https://user-images.githubusercontent.com/76871728/141727334-20027f85-61dd-43f1-90d4-4d9e18a4884f.png)


