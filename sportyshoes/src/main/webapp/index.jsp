<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes</title>

</head>
<style>
	.box{
		height:200px;
		width:200px;
		background-image:url("images/bg11.png");
	}
	.contain{
		padding:0px 10%
	}
</style>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/topbar.jsp" ></jsp:include>
<div >
<div style="margin-top: 85px;">
 	<div >
 	<div >
 	<c:if test="${categoryname == null}">
 	<c:forEach items="${list}" var="item">
 		<div >
 		   <div style="height:150px; border:2px solid black; background-color: #cdccf1; padding: 0px 9px;">
 			<h3 style="margin-top: 16px;">${item.name }</h3>
 			<h4 style="">Rs: ${item.price }</h4>
 			<a href="cartadditem?id=${item.ID}">Add To Cart</a>
 		   </div>
 		</div>
 	</c:forEach>
 	</c:if>
 	</div>
 	</div>
</div>
</div>
<jsp:include page="/components/footer.jsp"></jsp:include>
</body>
</html>