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
<h1>ENTER A SERVICE</h1>
<br><br>
<form action="AgentServlet" method="post">
<table>

<!**********************************************************************************************>
<tr>
<td>ENTER SERVICE TYPE</td>
<td>  <input type="text" name="Pproduct" size="30" placeholder="PRODUCT NAME"/>
</td>
</tr>
<!**********************************************************************************************>
<tr>
<td>ENTER SERVICE PRICE</td>
<td> <input type="TEXT" name="Pprice" size="30" required placeholder="2000,3000,50,000"/>
</td></tr>
<!**********************************************************************************************>
<tr><td>ENTER SERVICE'S BASIC DETAIL</td>
<td> <input type="text" name="config" size="30" required placeholder="How service works, what happens when service is seeked"/>
</td></tr>
<!**********************************************************************************************>
<tr>
<td>ENTER SERVICE'S RELATED IMAGE</td>
<td><input type="file" name="pic" size="10"
required="required" /></td>
</tr>
<!**************************************************************************************************>
<tr>
<td><input type="submit" value="register" size="30" /></td>
</tr>
<!**********************************************************************************************>

</table>
</form>
</center>

</body>
</html>