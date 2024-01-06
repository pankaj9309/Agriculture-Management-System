/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.controller;

import java.io.IOException;
import static java.lang.System.out;

import java.sql.*;
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
public class SaleController extends HttpServlet{
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try{
            HttpSession session = request.getSession();
            request.setAttribute("username", session.getAttribute("uname"));
       DerbyDBConnect dbcon = new DerbyDBConnect();
       if(dbcon.getConnection() == null)
           dbcon.setupConnection();
    
       ResultSet rs=dbcon.fetchValueFromTable("select fname,lname,mobilenumber,area from farmer where uname='"+ session.getAttribute("uname")+"'");
       request.setAttribute("saleData", rs);
         
      request.getRequestDispatcher("/sale1.jsp").forward(request, response);
      
      }catch(Exception e){out.print(e);}
       
    }
}
