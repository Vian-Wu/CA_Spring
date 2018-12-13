<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 --%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<style>
/* table, th, td {
  border: 1px solid grey;
  border-collapse: collapse;
  background-color: lightblue;
  color: black;
  padding: 40px;
  text-align: center;
}
th, td {
  padding: 15px;
} */

</style>
<meta charset="ISO-8859-1">

</head>
<body>

<center>
<h2 width="45%">Student Profile</h2>
<h4 width="45%"><a href = "${pageContext.request.contextPath}
	/studentprofile/edit/${student.userid}.html">Edit Profile</a></h4>

<table class = "table table-striped">

	<tr>
		<th>UserID</th>
		<td>${student.userid}</td>
	</tr>
	<tr>
		<th>FIRST_MID_NAME</th>
		<th>${student.firstMidName}</th>
	</tr>
	
	<tr>
		<th>LAST_NAME</th>
		<th>${student.lastName}</th>
	</tr>
	
	<tr>
		<th>DATE_JOINED</th>
		<th>${student.dateJoined}</th>
	</tr>
	
	<tr>
		<th>EMAIL</th>
		<th>${student.email}</th>
	</tr>
	
	<tr>
		<th>Status</th>
		<th>${student.status}</th>
	</tr>	
	<tr>
		<th>Password<th>
		You can change in the Edit Profile Page
	</tr> 
	</table>
		<br>
</body>
</html>