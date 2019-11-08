<%@ page import="dto.Product"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<html>
<head>
	<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>상세정보</title>
</head>
<body>
 <jsp:include page="main.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상세정보</h1>
		</div>
	</div>
	<%
	String id = request.getParameter("id");
	ProductRepository dao = ProductRepository.getInstance();
	Product product = productDAO.getProductById(id);
		
	%>
	<div class="container">
		<div class="row">
			<div  class="col-md-6">
				<h3><%= product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><b>상품코드 : </b><span class="badge badge-danger">
				<%=product.getProductId()%>
				</span>
				<p><b>제조사</b>:<%=product.getManufacturer()%>
				<p><b>분류</b>:<%=product.getCategory()%>
				<p><b>재고</b>:<%=product.getUnitsInStock()%>
				<h4><%=product.getUnitPrice()%>원</h4>
				<p><a href="#" class="btn btn-info">상품주문 &raquo;</a>
				<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>	
</body>
</html>