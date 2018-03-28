<%@page import="java.sql.*" %>
<%@page import="com.ibm.dao.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.maindiv {
background-color:gray;
}
.dropbtn {
    background-color: black;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
</head>
<body
style='background: linear-gradient(to right, black,grey);border-style:outset;border-radius:0px 24px 0px 24px;opacity:0.8 '>
	<div class="maindiv">
<center> <h1>IT ASSETS</h1></center><ul>
	  
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp   &nbsp &nbsp    &nbsp &nbsp  &nbsp &nbsp<a align='' valign='bottom' href='UserHome.jsp'><b><img src="image/home.png" width="160" height="160" alt="home"/>

                    </b></a> &nbsp &nbsp
                    
                     
                        <a href='Issue.jsp' target="Details"><b><img src="image/issue.jpg" width="150" height="150" alt="Issue"/>
                            </b></a>&nbsp &nbsp  
                            <a href='feedback.jsp' target="Details"><b><img src="image/Feedback.jpg" width="150" height="150" alt="Feedback"/>
                                </b></a>&nbsp &nbsp 
                                <a href='contactus.jsp' target="Details"><b><img src="image/contactus.jpg" width="150" height="150" alt="Contact Us"/>
                                    </b></a>&nbsp &nbsp 
                   <a href='register.jsp' target="Details"><b><img src="image/register.jpg" width="150" height="150" alt="Login"/>
                        </b></a>&nbsp &nbsp
                                      <div class="dropdown">
  <button class="dropbtn">Login/Register</button>
  <div class="dropdown-content">
    <a href="adminlogin.jsp">Admin</a>
    <a href="agentreg.jsp">Agent</a>
    <a href="Login.jsp">User</a>
  </div>
</div>
</div>
<%
ProjectDao obj=new ProjectDao();
ResultSet rs=obj.FetchAllProducts();
%>
<center>
<table border=1>
    <tr>
     <% 
       int i=0;
     if(session.getAttribute("username")!=null)
 	{
 		out.println("<font color='yellow'>"+session.getAttribute("username")+" you are successfully registered please login here!");
     }
       while(rs.next()) {
       %>
          
               <% if(i%5==0){ %><tr></tr><%} %>
              <td>
               <img src="images/<%=rs.getString(4) %>" height="100px" width="100px" /><br>
               <%=rs.getString(1) %><%=rs.getString(2) %><%=rs.getString(3) %>
               
              </td>
           
         
     <% i++; } %>
       </tr>
</table>
</center>



</body>
</html>