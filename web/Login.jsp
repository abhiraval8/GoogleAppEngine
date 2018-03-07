<%-- 
    Document   : Login
    Created on : Feb 28, 2018, 7:46:34 PM
    Author     : manth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
    input[type=email], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
button[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}
</style>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Login</title>
    </head>
  
    <form action="login" method="post">
    <body background="backgroundimg.jpg">
        <table border="0" align="center">
            <thead>
                <tr>
                    <th><h2><font color="white">Admin Login</font></h2></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="email" name="email" placeholder="Email"/>
                        </td>
                </tr>
                <tr>
                    <td><input type="password" name="password" placeholder="Password"/>
                    </td>
                </tr>
                <tr>
                    <td><button type="submit" name="submit">Submit</button></td>
                    
                </tr>
                <tr><td> <a href="viewdata.jsp"><font color="white">  View Data</font></a></td></tr>
            </tbody>
        </table>
   

    </body>
    </form>
</html>
