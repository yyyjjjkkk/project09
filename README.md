# project09
study(하루공부)

- 공부기록(글,like 일기)
- 공부 꿀팁(글, 그림)
- 자유게시판(글, 그림)
- 인기글 (댓글 10개이상)

>>기본 설정<<
layout.jsp
top.jsp
  ㄴ 공부기록,공부꿀팁,자유게시판,인기글 (게시판 목록)
footer.jsp
index.jsp
  ㄴ 환영문구, 00년 00월 00일 00시 00분 (시계 표시)



1. 로그인화면 (login.jsp)
     ㄴ무조건 로그인화면부터 나옴
     ㄴ ID   [             ]
         PW [             ]
         회원가입 (버튼)
     ㄴ loginfail이면 로그인화면으로 
     ㄴ loginsuccess면 main화면으로

2. 회원가입 (enroll.jsp)
     ㄴ name,id,pw,nickname,address
     ㄴ id는 중복확인 (json)


==========================================================
3. 한줄평(record.jsp)
     ㄴ 카드형태 게시판
     ㄴ rno,      rtitle,     rdate, rcontent, rreadcnt, rreproot, rrepstep,rrepindent
         글번호,영화제목, 개봉일,   줄거리,  조회수,   댓글 관련------
         r=record
     ㄴ 영화등록은 관리자만 가능
     ㄴ 댓글로 한줄평
     ㄴ 

4. 토론(discussion.jsp)
     ㄴ 목록형태 게시판
     ㄴ dno, nickname, dtitle, ddate, dcontent, dimg,  dreadcnt, dreproot, drepstep, drepindent
         글번호, 닉넴, 글제목, 날짜, 내용,       사진,   조회수,   댓글 관련------
         t=tip

5. 자유게시판 페이지(board.jsp)
     ㄴ 목록형태 게시판
     ㄴ bno, nickname, btitle, bdate, bcontent, bimg,  breadcnt, breproot, brepstep, brepindent
         글번호, 닉넴, 글제목, 날짜, 내용,       사진,   조회수,   댓글 관련------
         b=board

6.  인기글 (댓글 수 기준으로 )
     ㄴ예정


-> 댓글기능은 json으로 만들기
    https://devofroad.tistory.com/59
    https://velog.io/@alstn_dev/%EA%B2%8C%EC%8B%9C%ED%8C%90-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EB%8C%93%EA%B8%80-%EB%B0%8F-%EB%8C%80%EB%8C%93%EA%B8%80




