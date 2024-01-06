/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
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
public class VendorOrderController extends HttpServlet{
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName=request.getParameter("productname");
            String quality=request.getParameter("quality");
            int quantity=Integer.parseInt(request.getParameter("quantity"));
            try
              {
                  DerbyDBConnect dbCon = new DerbyDBConnect();
                  Connection con = dbCon.getConnection();
                  if(con == null)
                     con = dbCon.setupConnection();
                  HttpSession session = request.getSession();
                  request.setAttribute("username", (String)session.getAttribute("uname"));
                  String uname = (String) session.getAttribute("uname");
                  ResultSet rs = dbCon.fetchValueFromTableUsingParameter2("select market_price,quantity from available where produce_name=? and quality=?", productName, quality);
                  double marketPrice = 0;
                  int actualQuantity = 0;
                  int size=0;
                  while(rs.next()){
                   marketPrice = Double.parseDouble(rs.getString(1));
                   actualQuantity = Integer.parseInt(rs.getString(2));
                   size++;
                  }
                  if(size==0)
                  {
                      PrintWriter writer = response.getWriter();
                       writer.print("<script type='text/javascript'>alert(\"Sorry, Requested product not available\") \n" +
"                            	 window.history.back();</script>");
                      
                  }
                  if(quantity>actualQuantity)
                  {
                       PrintWriter writer = response.getWriter();
                       writer.print("<script type='text/javascript'>alert(\"Sorry, Requested quantity not available\") \n" +
"                            	 window.history.back();</script>");
                  }else{
                  double totalPrice = marketPrice * quantity;
                  PreparedStatement ps=con.prepareStatement("insert into orders values(?,?,?,?,?,?,?)");
                ps.setString(1,productName);
                ps.setString(2,quality);
                ps.setString(3,quantity+"");
                ps.setString(4,totalPrice+"");
                ps.setString(5,java.time.LocalDate.now().toString());
                ps.setString(6,"pending");
                ps.setString(7,uname);
                ps.executeUpdate();
                response.sendRedirect("afterlogin2.jsp");
                  }
              }catch(Exception e1){System.out.print(e1);}

                 }   
    
    
}
