/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
public class FarmerSaleController extends HttpServlet{
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName=request.getParameter("productname");
            String quality=request.getParameter("quality");
            String quantity=request.getParameter("quantity");
            String marketPrice=request.getParameter("market_price");
            String expectedPrice=request.getParameter("expected_price");
            try
              {
                  DerbyDBConnect dbCon = new DerbyDBConnect();
                  Connection con = dbCon.getConnection();
                  if(con == null)
                     con = dbCon.setupConnection();
                  HttpSession session = request.getSession();
                  request.setAttribute("username", (String)session.getAttribute("uname"));
                  String uname = (String) session.getAttribute("uname");
                  PreparedStatement ps=con.prepareStatement("insert into sales values(?,?,?,?,?,?,?)");
                ps.setString(1,productName);
                ps.setString(2,quality);
                ps.setString(3,quantity);
                ps.setString(4,marketPrice);
                ps.setString(5,expectedPrice);
                ps.setString(6,"pending");
                ps.setString(7,uname);
                ps.executeUpdate();
                response.sendRedirect("afterlogin1.jsp");
              }catch(Exception e1){System.out.print(e1);}

                 }   
    
}


