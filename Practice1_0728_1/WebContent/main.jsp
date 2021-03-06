<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 윗부분에는 menu.jsp 인클루드 -->
	<c:import url="/view/Menu.jsp" />
	<%
		boolean flag = false;
		if(!session.isNew()) {	// session.isNew() 함수 부분 확인 필요
			flag = (boolean) session.getAttribute("flag"); // LoginController에서 flag값을 저장.
		}
		if (flag) {%>
			<!-- 로그인된 경우 -->
			<h1>로그인 되었습니다</h1>
			<a href="${pageContext.request.contextPath }/LogoutController">로그아웃</a>
		<%} else { %>
		<!--  로그아웃한 경우 -->
	<div class="col-xl-3 col-md-6">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-dark">log-state</h6>
			</div>
			<div class="card-body">
				<h6>로그아웃 되었습니다(꾸며야함)</h6>
			</div>
		</div>
	</div>
	<%}%>
</body>
</html>