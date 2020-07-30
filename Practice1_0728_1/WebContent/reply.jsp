<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body><!-- 내 아이디와 같으면 수정, 삭제가 보이도록 하기 ??-->
	<h3>댓글 목록</h3>	
	<table border="1" cellspacing="0" >
			<tr>
				<td>name</td><td>content</td><td>date</td><td><a href="DelReplyController">삭제</a></td>
			</tr>
	</table>	
	<h3>댓글 작성</h3>
		<form id="writeCommentForm">
			<input type="text" name="content"/><input type="button" value="작성" />
		</form>
</body>
</html>