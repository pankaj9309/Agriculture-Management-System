/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import src.dbconnect.DerbyDBConnect;

/**
 *
 * @author 91930
 */
public class LoginController extends HttpServlet{
    
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String username = request.getParameter("uname");
       String password = request.getParameter("pass");
       String role = request.getParameter("role");
       HttpSession session;
       PrintWriter out = response.getWriter();
       try{
           if(role.equalsIgnoreCase("admin") && username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("root")){
               session = request.getSession();
               request.setAttribute("username", username);
               session.setAttribute("uname",username);
               request.getRequestDispatcher("/afterlogin3.jsp").forward(request, response);
           }
           DerbyDBConnect dbConnect = new DerbyDBConnect();
           Connection con = dbConnect.getConnection();
           if(con == null)
               con = dbConnect.setupConnection();
           String sql = "select fname,lname from "+role+" where uname='"+username+"' and pass='"+password+"'";
           System.out.println(sql);
           ResultSet rs=dbConnect.fetchValueFromTable(sql);
           
           if(rs.next() == false){
                request.setAttribute("loginFailed",true);
                request.getRequestDispatcher("/home.jsp").forward(request, response);
           }
           else{
               session = request.getSession();
               request.setAttribute("username", username);
               session.setAttribute("uname",username);
               if(role.equalsIgnoreCase("farmer"))
                    request.getRequestDispatcher("/afterlogin1.jsp").forward(request, response);
               else
                    request.getRequestDispatcher("/afterlogin2.jsp").forward(request, response);
           }
     }catch(Exception e1)
     {
         System.out.print(e1);
     }
		
	}

    
    
    
}
