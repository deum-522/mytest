<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

*{margin:auto}
a{text-decoration:none; color:black}
.design {text-align:center;line-height:80px;float:left;height:80px}
.top{width:99%; margin:20px}
.left{width:33%;}
.title{width:33%;}
.right{width:33%}
#join{width:40%;}
#log_state{width:40%;}
#mem_info{width:90%;}


</style>
</head>
<body>
<!--div{border:solid black 1px;}-->
<div class="design top">
	<div class="design left"> 
		<div class="design" id="mem_info">
			<a href="memberInfo.jsp">회원정보</a>
		</div>	
	</div>
	<div class="design title">
		<h1><a href="index.jsp">Kitri</a></h1>
	</div>
	<div class="design right">
		<div class="design" id="join">
			<a href="join.jsp">회원가입</a>
		</div>
		<div class="design" id="log_state">
			<a href="login.jsp">로그인</a>
		</div>
	</div>
</div>

</div>
</body>
</html>