<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body><!-- �� ���̵�� ������ ����, ������ ���̵��� �ϱ� ??-->
	<h3>��� ���</h3>	
	<table border="1" cellspacing="0" >
			<tr>
				<td>name</td><td>content</td><td>date</td><td><a href="DelReplyController">����</a></td>
			</tr>
	</table>	
	<h3>��� �ۼ�</h3>
		<form id="writeCommentForm">
			<input type="text" name="content"/><input type="button" value="�ۼ�" />
		</form>
</body>
</html>