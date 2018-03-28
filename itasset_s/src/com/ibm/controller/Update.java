package com.ibm.controller;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ibm.dao.ProjectDao;

@WebServlet("/Update")
@MultipartConfig(maxFileSize = 16177215)
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Update() {
           
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// gets values of text fields
				String pname= request.getParameter("pname");
				String iname= request.getParameter("iname");
				String price =  request.getParameter("price");
				String color =  request.getParameter("color");
				
				PrintWriter out=response.getWriter();
				response.setContentType("text/html");
				out.println(pname+" "+price+" "+color);
				
				
	

				
				
                    
                    
                    
                    ProjectDao obj=new ProjectDao();
                    String msg=obj.InsertService(pname, iname, price, color);
                    if(msg.equals("success"))
                    {
                    	response.sendRedirect("Service.jsp?var=successfully updated");
                    }
                    else
                    {
                    	response.sendRedirect("Service.jsp");
                    }
                    
                    		
                    
                    
				}


		
		
	}
	


