<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function del(sequence){
	location.href = "${pageContext.request.contextPath}/DelBoardController?sequence="+sequence;
}
function rec(sequence){
	location.href = "${pageContext.request.contextPath}/RecController?sequence="+sequence;
}
</script>
<style>
</style>
</head>
<body>
	<form action="${pageContext.request.contextPath }/Board/EditBoard.jsp" method="post">
		<h3 >글 읽기</h3>
		<table border="1" cellspacint="0">
			<tr>
					<th>글번호</th>
			
			<td colspan="2"><input type="text" value="${b.sequence }" name="sequence" size="45" readonly><br>
			조회수: ${b.viewcount} 추천수: ${b.recommend_cnt}</td>	
			
			</tr>
			<tr >
					<th >작성자: </th>	
					<td><input type="text" value="${b.writer}" name="writer" size="45" readonly></td>
					</tr>	
			<tr >
					<th >작성 날짜</th>
					<td><input type="text" value="${b.time }" name="time" size="45" readonly></td>						
			</tr>	
			<tr>
				<th>글 제목</th>
				<td><input type="text" value="${b.title}" name="title" readonly size="45"  ${str }></td>
			</tr>	
			<tr>
				<th>글 내용</th>
				<td><textarea rows="15" cols="45" readonly name="content" ${str }>${b.content}</textarea></td>
			</tr>	
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" >
					<input type="button" value="삭제" onclick="del(${b.sequence})">
					
				</td>						
			</tr>	
		</table> 
		
		<input type="button" value="추천하기" onclick="rec(${b.sequence})" >
		<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/Board/List_free.jsp?pagenum=1'" >
	</form>
</body>
</html>