<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>






<meta charset="UTF-8">
<title>Insert title here</title>
</head> 


<header>
<table >
<tr>
	
		
		       <td><a href="index">홈으로</a></td>
				<td><h1>회원 정보 관리</h1></td>
				
			<td>
			<c:choose>
				<c:when test="${logindo==true}">
					<a href=""><span>환영합니다!!${pj09_login.id }님</span></a>&emsp;
					<a href="logout">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="loginaa">로그인</a>
				</c:otherwise>
			</c:choose>
			</td></tr>

</table>
</header>
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
</html>
