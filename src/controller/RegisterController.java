/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import src.dbconnect.DerbyDBConnect;

/**
 *
 * @author 91930
 */
public class RegisterController extends HttpServlet{
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a=request.getParameter("fname");
            String b=request.getParameter("lname");
            String c=request.getParameter("gen");
            String d=request.getParameter("mob");
            String role=request.getParameter("role");
             String f=request.getParameter("address");
              String g=request.getParameter("uname");
             String h=request.getParameter("pass");
              String i=request.getParameter("retype");
              String j=request.getParameter("uid");
              
              
            
   try
     {
         DerbyDBConnect dbCon = new DerbyDBConnect();
         Connection con = dbCon.getConnection();
          if(con == null)
               con = dbCon.setupConnection();
         PreparedStatement ps=con.prepareStatement("insert into "+role.toLowerCase()+" values(?,?,?,?,?,?,?,?,?)");
      ps.setString(1,a);
      ps.setString(2,b);
      ps.setString(3,c);
      ps.setString(4,d);
      ps.setString(5,role);
      ps.setString(6,f);
      ps.setString(7,g);
      ps.setString(8,h);
      ps.setString(9,i);
      ps.executeUpdate();
       response.sendRedirect("home.jsp");
     }catch(Exception e1){System.out.print(e1);}
		
	}

    
    
    
    
    
}
