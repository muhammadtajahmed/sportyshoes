<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.detailsbox{
	padding:80px 25%;
}
</style>
</head>
<body>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
	<div >
	<div >
		<form action="signupaction" method="post">
		  <h4>Register</h4>
		  <div >
		  <div>
		    <label for="fname">First name</label>
		    <input type="text" id="fname" name="fname"   maxlength="20" placeholder="Enter first name" required>
		  </div>
		  <div >
		    <label for="lname">Last name</label>
		    <input type="text"  id="lname" name="lname" maxlength="20" placeholder="Enter last name" required>
		  </div>
		  </div>
		  <div >
		    <label for="email_id">Email address</label>
		    <input type="email" id="email_id" name="email_id" maxlength="40" placeholder="Enter email" required>
		  </div>
		  <div >
		    <label for="age">Age</label>
		    <input type="tel"  id="age" name="age" placeholder="Enter Age" required>
		  </div>
		  <div >
		    <label for="address">Address</label>
		    <input type="text"id="address" name="address" maxlength="100" placeholder="Enter Address" required>
		  </div>
		  <div >
		    <label for="pwd">Password</label>
		    <input type="text"  id="pwd" name="pwd" maxlength="20" placeholder="Enter password" required>
		  </div>
		  <div >
		    <label for="pwd2">Confirm Password</label>
		    <input type="text"  id="pwd2" name="pwd2" maxlength="20" placeholder="Enter password" required>
		  </div>
		  <div >
		  	  <small id="phone" >We'll never share your phone no and email with anyone else.</small>
		  	  <c:if test="${error!=null}">
		  	  <h5 ><c:out value="${error}"/></h5>
		  	  </c:if>
			  <button type="submit" > REGISTER </button>
		  </div>
		</form>
	</div>
	</div>
	
</body>
</html>