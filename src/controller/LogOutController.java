/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 91930
 */
public class LogOutController extends HttpServlet{
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       try{
           HttpSession session=request.getSession();  
            session.invalidate();  
            response.sendRedirect("index.jsp");
     }catch(Exception e1)
     {
         System.out.print(e1);
     }
		
	}

}
