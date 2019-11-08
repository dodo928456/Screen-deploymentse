<%@ page contentType="text/html; charset=utf-8" %>
<html>

	<head>
		 <title>상품등록</title>
		 <link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	</head>
<body>
 <jsp:include page="main.jsp"/>
  <div class="jumbotron">
  		<div class="container">
  			<h1 class="display-3">상품등록</h1>
  		</div>
  </div>
  	<div class="container">
  		<form action="./processAddProduct.jsp" class="form-horizontal" method="post" name="newProduct">
  			<div class="form-group row">
  				<label class="col-sm-2">상품코드</label>
  				<div class="col-sm-3">
  					<input type="text" name="productId" class="form-control"> 
  				</div>
  			</div>
  			
  			<div class="form-group row">
  				<label class="col-sm-2">상품명</label>
  				<div class="col-sm-3">
  					<input type="text" name="name" class="form-control"> 
  				</div>
  			</div>
  			
  			<div class="form-group row">
  				<label class="col-sm-2">가격</label>
  				<div class="col-sm-3">
  					<input type="text" name="untitPrice" class="form-control"> 
  				</div>
  			</div>
  			
  			<div class="form-group row">
  				<label class="col-sm-2">제조사</label>
  				<div class="col-sm-3">
  					<input type="text" name="manufacturer" class="form-control"> 
  				</div>
  			</div>
  			
  			<div class="form-group row">
  				<label class="col-sm-2">분류</label>
  				<div class="col-sm-3">
  					<input type="text" name="category" class="form-control"> 
  				</div>
  			</div>
  			
  			<div class="form-group row">
  				<label class="col-sm-2">재고 수</label>
  				<div class="col-sm-3">
  					<input type="text" name="unitsInStock" class="form-control"> 
  				</div>
  			</div>
  			
  			<div class="form-group row">
  				<label class="col-sm-2">상태</label>
  				<div class="col-sm-3">
  					<input type="radio" name="condition" value="new">새거
  					 <input type="radio" name="condition" value="oids">낡은거
  					 <input type="radio" name="condition" value="rasd">중고
  				</div>
  			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">			
				</div>
			</div>
  		</form>
  	</div>
</body>
</html>