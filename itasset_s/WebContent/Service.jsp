<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>INSERT NEW PRODUCTS</h1>
<form method="post" action="Update" enctype="multipart/form-data">
		<table>
			<tr>
				<td>ENTER SERVICE TYPE</td>
				<td><input type="text" name="pname" size="30" placeholder="PRODUCT NAME"
					required="required" /></td>
			</tr>
			<tr>
				<td>ENTER SERVICE ISSUE</td>
				<td><input type="text" name="iname" size="30" placeholder="Enter Your Issue"
					required="required" /></td>
			</tr>
			<tr>
				<td>ENTER SERVICE PRICE</td>
				<td><input type="text" name="price" size="30" required placeholder="2000,3000,50,000"
					 /></td>
			</tr>
			<tr>
				<td>ENTER SERVICE'S BASIC DETAIL</td>
				<td><input type="text" name="color" size="30" required placeholder="How service works, what happens when service is seeked" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="reset" value="Clear" /></td>
			</tr>
		</table>
		<%
		      if(request.getParameter("var")!=null)
		      {
		    	  out.println("<h3><font color=green>"+request.getParameter("var")+"</font></h3>");
		      }
		
		
		%>
	</form>
	</center>
</body>
</html>