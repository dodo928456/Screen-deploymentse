<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository" %>
<%

	request.setCharacterEncoding("UTF-8");

	String ProductId = request.getParameter("ProductId");
	String pname = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
	
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	long stock;
	
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	
	
	

	
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");
	
	

%>