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


=======================================================
홈컨트롤러 부분
@Autowired
	private SqlSession sqlSession;
	@RequestMapping(value="/")
	public String lo0(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		session.setAttribute("logindo", false);
		return "main";
	}
	@RequestMapping(value="/index")
	public String lo1()
	{
		return "main";
	}
	
	@RequestMapping(value="/loginaa")
	public String lo2() 
	{
		return "login";
	}	
	@RequestMapping(value="/loginCheck", method = RequestMethod.POST)
	public ModelAndView lo3(HttpServletRequest request, RedirectAttributes red)
	{	
		ModelAndView mav=new ModelAndView();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		LoginService ls = sqlSession.getMapper(LoginService.class);
		LoginDTO dto = ls.LoginCheck(id, pw);
		HttpSession session = request.getSession();
		if(dto!=null)
		{
			session.setAttribute("pj09_login", dto);
			session.setAttribute("logindo", true);
			session.setMaxInactiveInterval(300);
			mav.setViewName("redirect:index");
		}
		else 
		{
			red.addAttribute("result","loginfail");
			mav.setViewName("redirect:loginaa");
		}
			return mav;
				
	}
	
	@RequestMapping(value="/logout")
	public ModelAndView lo4(HttpServletRequest request) {
			HttpSession session=request.getSession();
			session.removeAttribute("pj09_login");
			session.removeAttribute("loginCheck");
			session.setAttribute("loginCheck",false);
			ModelAndView mav=new ModelAndView();
			mav.setViewName("redirect:index");
			return mav;
	}
	@RequestMapping(method=RequestMethod.GET, value="/*form")
	private ModelAndView form(@RequestParam(value="result", required=false) String result, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName(viewName);
		return mv;
	}

--------------------------------------------------------------------------------------------------------
로그인서비스(인터페이스)
package com.ezen.pj09;

public interface LoginService {
	public LoginDTO LoginCheck(String id,String pw);
}
---------------------------------------------------------------------------------------------------
로그인다오(xml)
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
  PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
  "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.ezen.pj09.LoginService">

<select id="loginaa" resultType="com.ezen.pj09.LoginDTO">
	SELECT * FROM pj09_login WHERE ID = #{param1}  AND PW = #{param2}
</select>

</mapper>
--------------------------------------------------------------------------------------------
top.jsp 시간 추가한거
<script type="text/javascript">
setInterval("dpTime()", 1000);
function dpTime() {
   var now = new Date();
   hours = now.getHours();
   min = now.getMinutes();
   sec = now.getSeconds();
   
   if(hours > 12){
      hours -= 12;
      ampm = "오후";
   } else {
      ampm = "오전"
   }
   if(hours < 10){
      hours = "0"+hours;
   }
   if(min < 10){
      min = "0"+min;
   }
   if(sec < 10){
      sec = "0"+sec;
   }
   
   document.getElementById("dpTime").innerHTML = ampm + " " + hours + ":" + min + ":" + sec
}
</script>

>> 0916 연진추가 <<
