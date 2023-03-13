<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.contain{
	margin:0px 15%;
}
.topmar{
	margin:150px 0%;
}
</style>
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
	<div >
	<div >
	<div>
		<div >
		<h2 style="text-align:center">Login</h2>
		<c:if test = "${regsucmessage !=null}">
		<p ><c:out value="${regsucmessage}"/></p>
		</c:if>
		<form action="loginaction" method="post">

			<div>
				<label for="email_id">User Name:</label> 
				<input type="text"  id="email_id" placeholder="User Name" name="email_id" required>
			</div>

			<div >
				<label for="pwd">Password:</label> 
				<input type="password" id="pwd" placeholder="Password" name="pwd" required>
			</div>
			<p ><c:out value="${error}"/></p>
			<button type="submit" >Submit</button>
			<p>Not Registered Yet <a href="signup">Click here</a></p>
		</form>
		</div>
	</div>

	<div>
		<div>
		<h2 style="text-align:center">Admin Login</h2>
		<form action="adminloginaction" method="post">

			<div >
				<label for="admin_id">User Name:</label> 
				<input type="text"  id="admin_id" placeholder="User Name" name="admin_id" required>
			</div>

			<div >
				<label for="uname">Password:</label> 
				<input type="password"  id="admin_pwd" placeholder="Password" name="admin_pwd" required>
			</div>
			<p =><c:out value="${adminerrlogmessage}"/></p>
			<button type="submit" >Submit</button>
		</form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>