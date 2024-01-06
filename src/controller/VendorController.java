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
public class VendorController extends HttpServlet{
    
     @Override
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try{
       DerbyDBConnect dbcon = new DerbyDBConnect();
       if(dbcon.getConnection() == null)
           dbcon.setupConnection();
       
       ResultSet rs=dbcon.fetchValueFromTable("select fname,lname,gender,mobilenumber,area,uname from vendor");
       request.setAttribute("vendorData", rs);
       HttpSession session = request.getSession();
       request.setAttribute("username", session.getAttribute("uname"));
       request.getRequestDispatcher("/vendor.jsp").forward(request, response);
       
        }catch(Exception e){}
    }
}