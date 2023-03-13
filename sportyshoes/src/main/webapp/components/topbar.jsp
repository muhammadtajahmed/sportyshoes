<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<div >
<p style="text-align:center">
<% if (session.getAttribute("user_id") == null ) { %>
	<a  style="margin-right:9px;" href="login">Login/Signup</a> | <a href="adminlogin">Adminlogin</a>
<% }  else { %>
	<a style="margin-right:9px;" href="cart">Cart</a>
	<a  style="margin-right:9px;" href="editprofile">Edit Profile</a>
	<a  style="margin-right:9px;" href="memberpurchases">Your Orders</a> 
<% }  %>
    
<br>
</p>
</div>