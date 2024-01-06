/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.dbconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author 91930
 */
public class DerbyDBConnect {
    
    Connection connection = null;

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
    
    public Connection setupConnection() throws Exception{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        connection=DriverManager.getConnection("jdbc:derby://localhost:1527/TopAgro","TopAgro","Pankaj@123");
        return connection;
    }
    
    public ResultSet fetchValueFromTable(String query)throws Exception{
        Statement st=connection.createStatement();
        return st.executeQuery(query);
    }
    
     public ResultSet fetchValueFromTableUsingParameter(String query, String name)throws Exception{
         PreparedStatement st=connection.prepareStatement(query);
         st.setString(1, name);
        return st.executeQuery();
    }
      public ResultSet fetchValueFromTableUsingParameter2(String query, String name,String name2)throws Exception{
         PreparedStatement st=connection.prepareStatement(query);
         st.setString(1, name);
         st.setString(2, name2);
        return st.executeQuery();
    }
     public void updateTableUsingParameter(String query, String name,String name2,String name3) throws Exception
     {
         PreparedStatement st=connection.prepareStatement(query);
         st.setString(1, name);
         st.setString(2, name2);
          st.setString(3, name3);
         st.executeUpdate();
     }
      public void updateTableUsingParameter(String query, String name,String name2) throws Exception
     {
         PreparedStatement st=connection.prepareStatement(query);
         st.setString(1, name);
         st.setString(2, name2);
         st.executeUpdate();
     }
    public Statement createStatement() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
