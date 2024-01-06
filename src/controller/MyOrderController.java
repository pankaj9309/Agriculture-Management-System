/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.controller;

import java.io.IOException;
import java.sql.ResultSet;
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
public class MyOrderController extends HttpServlet{
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try{
       DerbyDBConnect dbcon = new DerbyDBConnect();
       if(dbcon.getConnection() == null)
           dbcon.setupConnection();
        HttpSession session = request.getSession();
       request.setAttribute("username", session.getAttribute("uname"));
       String uname = (String) session.getAttribute("uname");
       
       ResultSet rs=dbcon.fetchValueFromTableUsingParameter("select produce_name,quality,quantity,total_price,date,status from orders where uname=?",uname);
       request.setAttribute("orderdata", rs);
      
       request.getRequestDispatcher("/myorder.jsp").forward(request, response);
       
        }catch(Exception e){
       System.out.println(e);
        }
    }
}
