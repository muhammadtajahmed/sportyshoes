<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<nav style="background-color: #e3f2fd;">
  <a href="<%=request.getContextPath()%>/home" style="font-size: 31px; font-weight: bold; ">SportShoes</a>

  <div id="navbarSupportedContent">
    <ul >
      <li >
        <a href="<%=request.getContextPath()%>/home">Home</a>
      </li>
    </ul>
    <form >
    
		<c:if test = "${user_id != null }">
			<a style="margin-right: 6px; font-weight: bold;"  type="submit" href="/dashboard">User Dashboard</a>
        	<a style="margin-right: 6px; font-weight: bold;"  type="submit" href="/logout">Logout</a>
		</c:if>
		<c:if test = "${admin_id != null }">
			<a style="margin-right: 6px; font-weight: bold;"  type="submit" href="/admindashboard">Admin Dashboard</a>
        	<a style="margin-right: 6px; font-weight: bold;"  type="submit" href="/logout">Logout</a>
		</c:if>
			<c:if test ="${user_id == null && admin_id == null}">
			<a style="margin-right: 6px; font-weight: bold;"  type="submit" href="/login">Login</a>
		</c:if>
		
    </form>
  </div>
</nav>