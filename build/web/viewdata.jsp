<%-- 
    Document   : viewdata
    Created on : Feb 28, 2018, 8:25:22 PM
    Author     : manth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
<html>
    <head>
       
              
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW DATA</title>
    </head>
    <body background="backgroundimg.jpg">
        <table border="1" align="center" >
            
            <thead>
                <tr>
                    
                   <th><font color="white">FIRST NAME</font></th>
                    <th><font color="white">LAST NAME</font></th>
                    <th><font color="white">DATE OF BIRTH</font></th>
                    <th><font color="white">GENDER</font></th>
                    <th><font color="white">ADDRESS</font></th>
                    <th><font color="white">EMAIL</font></th>
                    <th><font color="white">COLLAGE NAME</font></th>
                    <th><font color="white">DEPARTMENT</font></th>
                    <th><font color="white">SEMESTER</font></th>
                    
                    </font>
                </tr>
             
            </thead>
            <tbody>
                    <%
              try
                {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                }
                catch(ClassNotFoundException e)
                {
                    e.getMessage();
                }
              ResultSet resultSet;
              try
               {
                    String username="manthan";
                    String password="manthan";
                    Connection cn=DriverManager.getConnection("jdbc:derby://localhost:1527/GAE",username,password);
                    Statement st=cn.createStatement();
                    String sql="select * from register";
                    resultSet= st.executeQuery(sql);
                    while(resultSet.next()){
                    %>
                
                <tr>
                    <td><font color="white"><%= resultSet.getString("FIRSTNAME") %></font></td>
                    <td><font color="white"><%= resultSet.getString("LASTNAME") %></font></td>
                    <td><font color="white"><%= resultSet.getString("DOB") %></font></td>
                    <td><font color="white"><%= resultSet.getString("GENDER") %></font></td>
                    <td><font color="white"><%= resultSet.getString("ADDRESS") %></font></td>
                    <td><font color="white"><%= resultSet.getString("EMAIL") %></font></td>
                    <td><font color="white"><%= resultSet.getString("COLLAGENAME") %></font></td>
                    <td><font color="white"><%= resultSet.getString("DEPARTMENT") %></font></td>
                    <td><font color="white"><%= resultSet.getString("SEMESTER") %></font></td>
                </tr>
            </tbody>
            <%    }
                
               } catch(Exception e)
               {        
                   out.println(e.getMessage());
               }
        %>

        </table>
              
        
    </body>
</html>
