# Spring Legacy Project

## 프로젝트 개요
#### "kt&g" 사이트를 참고하여 만든 웹 애플리케이션
####

------
## 개발 환경

### ★Back End
#####   - STS4(IDE)
#####   - Spring Legacy - Spring Framework 5.0.8.RELEASE
#####   - Java 8, JDK 1.8
#####   - ORM : Mybatis
#####   - Build : Maven

### ★Front End
#####   - Foundation CSS Framework
#####   - Javascript
#####   - Jquery
#####   - Ajax

### ★Database
#####   - Oracle DB

### ★Server
#####   - Tomcat 9.0


------
## 프로젝트 설계
#### ★MVC Level 2
![image](https://user-images.githubusercontent.com/112448467/212797796-84f9745a-2868-4e80-92c3-a099c2d2c3fa.png)

#### ★BCryptPasswordEncoder 의존성 추가(회원 비밀번호 암,복호화)
![image](https://user-images.githubusercontent.com/112448467/212799195-57df330a-4f2f-4904-9950-013ad74deabf.png)
![image](https://user-images.githubusercontent.com/112448467/212799231-f316c367-812a-4c6f-bb7c-08e40e88942e.png)

#### ★Mybatis
![image](https://user-images.githubusercontent.com/112448467/212800500-c20243fa-7a17-46cb-b67e-1ffa0121f20c.png)

#### ★Transaction
![image](https://user-images.githubusercontent.com/112448467/212800556-46f3ff73-2649-42f8-b91a-2281df61783c.png)

#### ★commons-fileupload(자유게시판 사진 업로드)
![image](https://user-images.githubusercontent.com/112448467/212800696-38e68d3e-1357-4189-b07a-1439a61cf897.png)

#### ★ERD
##### 회원(member)
![image](https://user-images.githubusercontent.com/112448467/212801177-fb59f6e6-2774-4ea3-ad13-0fade43b90bb.png)

##### 공지사항(board)
![image](https://user-images.githubusercontent.com/112448467/212801238-e4fea232-32cb-4842-b8c5-0c0ef3b5f383.png)

##### 자유게시판(free)
![image](https://user-images.githubusercontent.com/112448467/212801282-dd975ec2-9ccf-465d-8c7d-06d31a43e67f.png)

#### ★interface를 이용하여 객체간 결합도를 낮추는 약결합 구조
##### 회원(member)
![image](https://user-images.githubusercontent.com/112448467/212802496-e70daaa0-3a44-4732-91db-2923b38c47ff.png)

##### 공지사항(board)
![image](https://user-images.githubusercontent.com/112448467/212802327-79fad39d-e3e8-4073-9c4a-642f49f69973.png)

##### 자유게시판(free)
![image](https://user-images.githubusercontent.com/112448467/212802614-dedde7c5-779d-4d50-9eb4-9695aa21e5ed.png)

------
## 주요 기능

#### ★메인페이지 & 로그인
![image](https://user-images.githubusercontent.com/112448467/212801510-55d9988b-72ba-4f16-a7fb-92c5cf5b700a.png)

#### ★회원가입
![image](https://user-images.githubusercontent.com/112448467/212802815-6a8582e9-90c1-47bf-8f31-8c02f54be8b8.png)

#### ★자유게시판 글 작성
![image](https://user-images.githubusercontent.com/112448467/212801612-443e7843-f1f4-464a-9889-a799e27f17f6.png)

#### ★사진 첨부
![image](https://user-images.githubusercontent.com/112448467/212801724-dac63c5b-cc5e-464b-9022-74f24d7295a0.png)
![image](https://user-images.githubusercontent.com/112448467/212801746-2dd3fdd3-ee9c-4213-b81b-6b9a03213fe7.png)

