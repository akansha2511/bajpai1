



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="com.ibm.controller.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="login2">
 
            
            <table  width="400px"  height="440" align='center' bgcolor='white'>
                
  
	 	<tr >
                    <td height='100' align='center'>
                                  <img src="image/images (4).jpg" width="175"px height="180px" alt="images (4)"/>

	 		
			
	 		</td>
	 	</tr>
		 <tr>
			<td  valign='top' align='center' height='10'>
				</br><input type='text'  name="uid" size='50' style='height:30px;width:250px;border:0px;'/>
			</td>
	 	</tr>
		<tr>
			<td valign='top' align='center' height='15'>
				</br>
		<input type='Password' style='height:30px;width:250px;border:0px;' name="pwd" placeholder='Password'  size='50'/>
	 
          		</td>
	 	</tr>
		
	 	<tr>
			<td valign='top' align='center' height='15'>
	        	<input type='submit' value='Sign In' name="Sign_In" style='background:#007fff;border-radius:3px;height:30px;width:250px;border:0px;'/> 
			</td>
	 	</tr>
	 	<tr>
	 		<td valign='top' align='center' height='15'>
		 
                 <a href="fpwd.jsp "><font style="color: black" align='left'>                                        Forgot password?</font></a>
	 	
	 		</td>
	 	</tr>
                <tr><td><center> <a href='register.jsp'>Create an account</a></center></td></tr>
	 	
	 </table>
	</form>
  </body>

 
 <%
 
 try
        
 {   
if (request.getParameter("Sign_In") != null)
       {
          
String user_id=request.getParameter("uid");

String pwd=request.getParameter("pwd");

boolean status=false;
query q=new query();
ResultSet rs=q.get_data("select * from admin where username='"+user_id+"' and password='"+pwd+"'");
status=rs.next();

if(status)
{
    session.setAttribute("user",user_id);
    response.sendRedirect("admin.jsp");
   
    
}

else
{ %>
<script> alert ("Enter valid id and password"); </script>
     <% response.sendRedirect("login2.jsp");
    
}
 }
       }
catch(Exception e)
{e.printStackTrace();
}



            %>
            </html>