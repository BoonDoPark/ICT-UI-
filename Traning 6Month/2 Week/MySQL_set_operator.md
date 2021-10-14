# ICT폴리텍대학 빅데이터 UI 훈련 과정

## 21-10-14

## MySql

## 집합연산

1. UNION(교집합)

여러 테이블에 존재하는 같은 데이터를 한번의 쿼리로 추출할 수 있게 해준다.

![캡처2](https://user-images.githubusercontent.com/76871728/137269479-1274f6b7-a62c-46c2-831a-68fe207b315c.PNG)

2. EXCEPT(차집합)

MySql에서는 EXCEPT를 지원하지 않는다.

![캡처2 5](https://user-images.githubusercontent.com/76871728/137269503-683f0bcd-90ce-401d-af78-01e4c4e0c7ae.PNG)

3. JOIN

서로 다른 테이블 데이터를 합쳐준다. pandas에서 merge같은 역활 수행한다.

![캡처3](https://user-images.githubusercontent.com/76871728/137269555-d1326685-d5d9-4f36-b660-f656a80dc257.PNG)

예제 : 소속 부서이름, 사원이름, 직급, 급여를 내림차순으로 정렬한다.

![캡처4](https://user-images.githubusercontent.com/76871728/137269825-462ae61e-0a13-407c-85e0-e33fd6416dfb.PNG)

### View 파일

데이터베이스의 가상 테이블이다. 특정유저들에게 테이블 전체가 아닌 일부분을 보여줄 수 있다. 단점은 테이블의 데이터가 바뀌면 다시 생성해야 하는 단점이 있다.

create VIEW view 추출 select * from table

![캡처5](https://user-images.githubusercontent.com/76871728/137272585-8c45419c-d2ad-4578-95f5-6c1e2ec4724d.PNG)
