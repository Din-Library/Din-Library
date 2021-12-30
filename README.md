# Din-Library
Java, Spring, Oracle, Mybatis, Mysql, Bootstrap, Open API
#### Developers by. 김수진 김지윤 문정우


■ 도서관에서 사용하는 대출/반납 시스템을 웹 프로젝트로 구현

1. 도서 목록 및 도서 검색은 알라딘 API를 사용해 현재 베스트셀러 목록과 신간도서 목록 출력
2. DataBase Diagram <br><br>
![db diagram](https://user-images.githubusercontent.com/44959513/147783706-5e12dd1a-7fd3-4c4b-a2b1-a067896b4c71.png)
3. 대출/반납/조회는 도서 정보와 회원 정보를 대출도서 DB에 삽입, 삭제, 조회하여 구현
4. 회원가입, 로그인, 회원정보변경, 회원탈퇴는 회원정보 DB에 삽입, 조회, 수정, 삭제하여 구현
5. 찾아오시는 길은 카카오 지도 API를 사용해 구현
6. 공지사항은 게시판 구현 (관리자만 글 작성과 삭제 가능) 및 페이지 처리
7. 프로젝트 흐름도 <br><br>
![chart drawio](https://user-images.githubusercontent.com/44959513/147783805-c766bea0-badd-4898-82d3-9499a7c96688.png)
8. 프로젝트 보고서 [Din Library Project.pdf](https://github.com/Din-Library/Din-Library/blob/main/Din%20Libaray%20Project.pdf)

### <br>
■ 구현한 Spring 프로젝트를 cafe24에 호스팅

1. http://dinlib.cafe24.com
2. 메인 화면 주소 변경 ("/book" -> "/")
3. cafe24에 호스팅하기 위해 Oracle DB를 MySQL로 변경
![dinlib cafe24](https://user-images.githubusercontent.com/44959513/147784751-45da2a31-a173-435e-8ae7-9ef21e030cc8.PNG)




