<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Edit Profile</title>

<style>
.detailsbox{
	padding:80px 25%;
}
</style>
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
	<div >
	<div >
		<form name=frmEdit action="editprofileaction" method="post">
		  <h4>Update Profile</h4>
		  <div >
		  <input type=hidden name=user_id value="${user.ID}">
		  <div >
		    <label for="fname">First name</label>
		    <input type="text"  id="fname" name="fname"   maxlength="20" placeholder="Enter first name" value="${user.fname }" required>
		  </div>
		  <div >
		    <label for="lname">Last name</label>
		    <input type="text"  id="lname" name="lname" maxlength="20" placeholder="Enter last name" value="${user.lname }" required>
		  </div>
		  </div>
		  <div >
		    <label for="age">Age</label>
		    <input type="tel"  id="age" name="age" placeholder="Enter Age" value="${user.age }" required >
		  </div>
		  <div >
		    <label for="address">Address</label>
		    <input type="text"  id="address" name="address" maxlength="100" placeholder="Enter Address" value="${user.address }" required>
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
			  <button type="submit" > UPDATE </button>
		  </div>
		</form>
	</div>
	</div>
<jsp:include page="/components/footer.jsp"></jsp:include>
</body>
</html>


	