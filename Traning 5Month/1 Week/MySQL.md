# ICT폴리텍대학 빅데이터 UI 훈련 과정

## 21-09-02

### 데이터베이스 언어

+ DDL(Data Defination Language) : 데이터 정의 언어
+ DML(Data Manipulation Language) : 데이터 조작 언어
+ DCL(Data Control Language) : 데이터 제어 언어

### Ubuntu에서 MySQL 설치

MySQL은 RDBMS(Relational Database Management System)이다. 관계형 데이터베이스는 모든 데이터를 table형식으로 정리하며, 고유 키값으로 row를 식별한다.

패키지 업데이트와 업그레이드를 진행한다.

![캡처1](https://user-images.githubusercontent.com/76871728/131810432-26324880-1537-4a9e-a9f3-317fe8cb588f.PNG)
![캡처2](https://user-images.githubusercontent.com/76871728/131810609-0e043ee3-e7f4-4125-a488-64a1ad1e7b24.PNG)

mysql-sever 설치

![캡처3](https://user-images.githubusercontent.com/76871728/131810777-9800cb54-aa96-469d-a2df-10ec3afac4d0.PNG)

mysql보안 설정

![캡처4](https://user-images.githubusercontent.com/76871728/131810872-22605f01-5f27-47a8-b1be-ab4a54057c2f.PNG)

충분히 강한 패스워드를 생성할 수 있는 플러그인을 활성하는지 묻는 내용으로 No를 입력한다.

![shell-mysql-init-step-1](https://user-images.githubusercontent.com/76871728/131811301-3ea20834-d35f-43d7-a803-02cfaf4c1e50.png)

(출처 : https://velog.io/@hyeseong-dev/MySQLMySQL-%EC%9A%B0%EB%B6%84%ED%88%AC-20.04-%EC%84%A4%EC%B9%98)

최고 관리자 권한 패스워드 입력

![shell-mysql-init-step-2](https://user-images.githubusercontent.com/76871728/131811553-1ccb0770-adf3-4226-b1ad-735a0c2599a6.png)

(출처 : https://velog.io/@hyeseong-dev/MySQLMySQL-%EC%9A%B0%EB%B6%84%ED%88%AC-20.04-%EC%84%A4%EC%B9%98)

익명의 사용자를 제거하는지 묻는 내용으로 y를 입력하여, 익명의 사용자 삭제

![shell-mysql-init-step-3](https://user-images.githubusercontent.com/76871728/131812088-e21e435b-c0f9-4962-9758-d3b339fa06ed.png)

(출처 : https://velog.io/@hyeseong-dev/MySQLMySQL-%EC%9A%B0%EB%B6%84%ED%88%AC-20.04-%EC%84%A4%EC%B9%98)

최고 관리자 권한으로 외부 로그인을 허용하지 않을 것인지 묻는 것, 사진은 y지만 no로 해준다.

![shell-mysql-init-step-4](https://user-images.githubusercontent.com/76871728/131812245-fbe935aa-0485-42d2-85f3-9db89569ecaf.png)

(출처 : https://velog.io/@hyeseong-dev/MySQLMySQL-%EC%9A%B0%EB%B6%84%ED%88%AC-20.04-%EC%84%A4%EC%B9%98)

test 데이터베이스를 삭제할지 묻는 내용

![shell-mysql-init-step-5](https://user-images.githubusercontent.com/76871728/131812576-f008effa-64a0-49e0-bc63-0a2b932e71dc.png)

(출처 : https://velog.io/@hyeseong-dev/MySQLMySQL-%EC%9A%B0%EB%B6%84%ED%88%AC-20.04-%EC%84%A4%EC%B9%98)

$sudo /etc/init.d/mysql restart로 mysql 데몬을 다시 실행

root계정으로 로그인하여 실행
비밀번호 설정

![캡처7](https://user-images.githubusercontent.com/76871728/131812871-1cdac6e6-008b-4585-b9bd-25a871242aef.PNG)

![캡처8](https://user-images.githubusercontent.com/76871728/131813252-b01170b9-a480-4858-a62c-fa583715eefd.PNG)

### 데이터베이스 언어

데이터베이스를 만들고 보여주는 명령어

![캡처10](https://user-images.githubusercontent.com/76871728/131813509-d9ad2d0a-0635-412b-a274-ae194e8fc248.PNG)

![캡처11](https://user-images.githubusercontent.com/76871728/131813544-17deaf79-af46-4cd9-8963-1a5b64b1f8fe.PNG)

데이터베이스를 선택해 table을 넣어주고 보는 명령어.

![캡처12](https://user-images.githubusercontent.com/76871728/131813718-fec89c5f-b1bd-4cd3-a0de-6a83ba86318a.PNG)
![캡처13](https://user-images.githubusercontent.com/76871728/131813726-8826b781-84cb-4cf0-8655-e80770f42697.PNG)
![캡처14](https://user-images.githubusercontent.com/76871728/131813851-c5271b20-73de-495e-aee5-6c0607e673b8.PNG)

table의 설명하는 명령어

![캡처15](https://user-images.githubusercontent.com/76871728/131813971-f8c8837d-c776-4eb7-b443-6ee0b9eb67e3.PNG)

table에 값을 넣고, 추가하는 명령어

![캡처16](https://user-images.githubusercontent.com/76871728/131814059-a73de99c-0ee4-443b-a6d9-95e2be18fbb7.PNG)
![캡처17](https://user-images.githubusercontent.com/76871728/131814063-80799015-15a8-41c9-ac78-fdb9dbd1ec01.PNG)
