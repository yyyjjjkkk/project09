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
<c:set var="result" value="${param.result}"/>
<c:choose>
	<c:when test="${result=='loginfail'}">
		<script type="text/javascript">
			window.onload=function(){
				alert("로그인 확인 해주세요!!");
			}
		</script>
	</c:when>
</c:choose>

<header>
<table >
	<tr>
		<td>
				<h1>회원관리 프로그램ver1.0</h1>
		</td>
		<td width="300">
		
			<c:choose>
				<c:when test="${loginState==true}">
					<a href=""><span>환영합니다!!${member.id }님</span></a>&emsp;
					<a href="logout">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="logina">로그인</a>
				</c:otherwise>
			</c:choose>
		<!--  -->	
		</td>				
	</tr>
</table>
</header>
<!--  -->

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">1. 정보 관리<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="input">입력</a></li>
          <li><a href="output">출력</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">2. 성적<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">성적 </a></li>
          <li><a href="#">관리</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">3. 파일업로드<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="load">파일추가 </a></li>                    
        </ul>
      </li>
    </ul>
  </div>
</nav>
</html>
