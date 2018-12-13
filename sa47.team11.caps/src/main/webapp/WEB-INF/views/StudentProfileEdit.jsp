<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>

<%-- 	<div class="container">
  <form:form class="form-horizontal" method="POST" modelAttribute="user"
	action="${pageContext.request.contextPath}/studentprofile/edit/${student.userid}.html">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">
      	<s:message code="fieldLabel.username" />
      </label>
      <div class="col-sm-4">
     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
     <form:input path="email" class="form-control" placeholder="Enter email" />
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">
      	<s:message code="fieldLabel.username" />
      </label>
      <div class="col-sm-4">
     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
     <form:input path="email" class="form-control" placeholder="Enter email" />
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">
		<s:message code="fieldLabel.password" />
	</label>
      <div class="col-sm-4">          
       <!--  <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"> -->
      	<form:password path="password" class="form-control" placeholder="Enter password"/>
      </div>
    </div>

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
       <!--  <button type="submit" class="btn btn-default">Submit</button> -->
       <form:button name="submit" class="btn btn-default" type="submit">Login</form:button>
      </div>
    </div>
  </form:form>
</div> --%>

<form:form method="POST" modelAttribute="user"
	action="${pageContext.request.contextPath}/studentprofile/edit/${student.userid}.html">
		<center>
		
		<h2 width="45%">Edit Student Profile</h2>
	
			<table class = "table table-striped">
	
 				<tr> 
				<th width="60%">Student ID:<th> 
				<input type="text" name="userid" value="${student.userid}" readonly>
 				</tr> 
  					
				<tr > 
 				<th width="60%">First and Mid Name:<th> 
  				<input type="text" name="firsMidame" value="${student.firstMidName}" readonly>
   				</tr> 
  				
  				<tr>
 				<th width="60%">Last Name:<th> 
  				<input type="text" name="lastname" value="${student.lastName}" required>
 				</tr>
				
				<tr>
				<th width="60%">Date Joined:<th>
				<input type="text" name="datejoined" value="${student.dateJoined}" readonly>
				</tr>
				
				<tr>
 				<th width="60%">Email Address:<th>
				<input type="text" name="emailaddress" value="${student.email}" readonly>
				</tr>
  				
				<tr>
				<th width="60%">LOGIN Old Password:<th>
				<input type="password" name="oldpassword" value="${student.password}" readonly>
				</tr>  			 
  			
				<tr>
				<th width="60%">LOGIN New Password (Editable):<th> 
				<input type="password" id="newpass" name="newpass" value="" required> 
				<input type="hidden" id="newpassword" name="newpassword" value="" required>
				</tr>  			  			
 			
		</table>
				<br>
				<button type="submit">Submit</button>
		</center>
	</form:form>
	
	<script>
	$(document).ready(function(){
		

		 $("form").submit(function(e){
           //  e.preventDefault(e);
             $("#newpassword").val($("#newpass").val());
 			alert("Are you sure for changing?");
 			//return  false;
         });
	});
</script>
	
</body>
</html> 



<%-- <%-- 

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- </head> -->
<!-- <body> -->
<!-- 	<h3>Edit Student Profile</h3> -->
	<form:form
		action="${pageContext.request.contextPath}/studentprofile/edit/${student.userid}.html"
		method="POST" modelAttribute="student">
<!-- 		<div> -->
			<label> <s:message code="label.user.id" /></label>
			<form:input path="userid" size="40" disabled="true" />
<!-- 		</div> -->
<!-- 		<div> -->
			<label> <s:message code="label.user.firstMidName" /></label>
			<form:input path="firstMidName" size="40" required="required" />
<!-- 		</div> -->
<!-- 		<div> -->
			<label> <s:message code="label.user.lastName" /></label>
			<form:input path="lastName" size="40" required="required" />
<!-- 		</div> -->
<!-- 		<div> -->
			<label> <s:message code="label.user.dateJoined" /></label>
			<form:input path="dateJoined" size="50" disabled="true" />
<!-- 		</div> -->
<!-- 		<div> -->
			<label> <s:message code="label.user.email" /></label>
			<form:input path="email" size="50" disabled="true" />
<!-- 		</div> -->
<!-- 		<div> -->
			<label> <s:message code="label.user.status" /></label>
			<form:input path="status" size="50" disabled="true" />
<!-- 		</div> -->
<!-- 		<div> -->
			<label> <s:message code="label.user.password" /></label>
			<form:input path="password" size="50" />
<!-- 		</div> -->
<!-- 		<input type="submit" value="Submit" /> -->
<!-- 		<br /> -->
<!-- 		<input type="reset" value="Reset" /> -->
<!-- 		<br /> -->
		<a href="${pageContext.request.contextPath}/studentprofile/list/{userid}">
<!-- 		</a> -->
	</form:form>
<!-- </body> -->
<!-- </html> -->

 --%> 