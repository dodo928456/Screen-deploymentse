<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>로그인</title>
</head>

<body>
	<%
	String id = getInitParameter("id");
	String password = getInitParameter("password");
	
		if (id != "admin"){
			out.println("<div class='alert alert-danger'>");
			out.println("아이디와 비밀번호를 확인해주세요");
			out.println("</div>");
	}else{
		out.println("no");
	}
	%>
	<form action="loginprocess.jsp">
		<input type="text" name="id" id="id">아이디
		<input type="text" name="password" id="password">비밀번호
		<input type="submit" value="전송">전송
	</form>
</body>
</html>