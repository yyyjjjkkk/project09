# project09
study(하루공부)

- 한줄평(관리자가 영화 등록하면 거기에 댓글로 한줄평)  : pj09_record
- 토론(글, 그림) : pj09_discussion
- 자유게시판(글, 그림) : pj09_board
- mypage 

- 로그인 : pj09_login
- 회원 : pj09_member
- 


>>기본 설정 <br>
layout.jsp <br>
top.jsp <br>
  : 공부기록,공부꿀팁,자유게시판,인기글 (게시판 목록) <br>
footer.jsp <br>
index.jsp <br>
  ㄴ 환영문구, 00년 00월 00일 00시 00분 (시계 표시) <br>

>>1. 로그인화면 (login.jsp) <br>
     ㄴ무조건 로그인화면부터 나옴 <br>
      ID [             ] <br>
      PW [             ] <br>
      회원가입 (버튼) <br>
     ㄴ loginfail이면 로그인화면으로  <br>
     ㄴ loginsuccess면 main화면으로 <br>
 
>>2. 회원가입 (enroll.jsp) <br>
     ㄴ name,id,pw,nickname,address <br>
     ㄴ id는 중복확인 (json) <br>

========================================================== <br>
>>3. 한줄평(record.jsp) <br>
     ㄴ 카드형태 게시판 <br>
     ㄴ rno,      rtitle,     rdate, rcontent, rreadcnt, rreproot, rrepstep,rrepindent <br>
         글번호,영화제목, 개봉일,   줄거리,  조회수,   댓글 관련------ <br>
         r=record <br>
     ㄴ 영화등록은 관리자만 가능 <br>
     ㄴ 댓글로 한줄평 <br>
     ㄴ  <br>
 <br>
 
>>4. 토론(discussion.jsp) <br>
     ㄴ 목록형태 게시판 <br>
     ㄴ dno, nickname, dtitle, ddate, dcontent, dimg,  dreadcnt, dreproot, drepstep, drepindent <br>
         글번호, 닉넴, 글제목, 날짜, 내용,       사진,   조회수,   댓글 관련------ <br>
         t=tip <br>
 <br>
 
>>5. 자유게시판 페이지(board.jsp) <br>
     ㄴ 목록형태 게시판 <br>
     ㄴ bno, nickname, btitle, bdate, bcontent, bimg,  breadcnt, breproot, brepstep, brepindent <br>
         글번호, 닉넴, 글제목, 날짜, 내용,       사진,   조회수,   댓글 관련------ <br>
         b=board <br>
 <br>
 
>>6.  인기글 (댓글 수 기준으로 ) <br>
     ㄴ예정 <br>
 <br>
 <br>
 
-> 댓글기능은 json으로 만들기 <br>
    https://devofroad.tistory.com/59 <br>
    https://velog.io/@alstn_dev/%EA%B2%8C%EC%8B%9C%ED%8C%90-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EB%8C%93%EA%B8%80-%EB%B0%8F-%EB%8C%80%EB%8C%93%EA%B8%80 <br>


[</h4>](https://trello.com/invite/b/2dhsJwWH/a7489ded8430e8d488e34112f881d6b7/project09)
지금 추가 작업을 하고 있습니다
로그인 하는중


