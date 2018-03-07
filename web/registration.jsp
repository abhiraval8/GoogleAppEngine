<%-- 
    Document   : registration
    Created on : Feb 28, 2018, 8:24:03 PM
    Author     : manth
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <style>
    input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
  
    input[type=date], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
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
input[type=textarea], select {
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
        <title>Welcome</title>
    </head>
    <form action="insertdata" method="post" onsubmit=" return validation()" name="vform">
    <body background="backgroundimg.jpg">
        <table border="0" align="center">
            <thead>
                <tr>
                    <th><h2><font color="white">Insert Data</font></h2></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" id="firstname" name="firstname" value="" placeholder="First Name" />
                        <div id="firstname_error"></div></td>
                </tr>
                <tr>
                    <td><input type="text" id="lastname" name="lastname" placeholder="Last Name"/>
                     <div id="lastname_error"></div></td>
                </tr>
                <tr>
                    <td><input type="date" name="dob" placeholder=""/></td>
                </tr>
                <tr>
                    <td><font color="white"><input type="radio" name="gender" checked="checked" value="male">Male</input>
                        <input type="radio" name="gender" value="female">Female</input></font></td>
                </tr>
                <tr>
                    <td><textarea name="address" id="address" cols="25" rows="5" placeholder="Address">
                         
                        </textarea><div id="address_error"></div></td>
                </tr>
                <tr>
                    <td><input type="email" id="email" name="email" placeholder="Email"/>
                     <div id="email_error"></div></td>
                </tr>
                <tr>
                    <td><input type="text" id="collagename" name="collagename" placeholder="Collage Name"/>
                     <div id="collagename_error"></div></td>
                </tr>
                <tr>
                    <td><select name="department">
                            <option name="select" selected="selected">Department</option>
                            <option name="computerEngineearing">Computer Engineearing</option>
                            <option name="ElectricalEngineearing">Electrical Engineearing</option>
                            <option name="InformationTechnology">Information Technology</option>
                            <option name="CivilEngineearing">Civil Engineearing</option>
                            <option name="MechanicalEngineearing">Mechanical Engineearing</option>
                            
                        </select></td>
                </tr>
                <tr>
                    <td><select name="semester">
                            <option name="select" selected="selected">Semester</option>
                            <option name="1">1</option>
                            <option name="2">2</option>
                            <option name="3">3</option>
                            <option name="4">4</option>
                            <option name="5">5</option>
                            <option name="6">6</option>
                            <option name="7">7</option>
                            <option name="8">8</option>
                        </select></td>
                </tr>
                <tr>
                    <td><button type="submit" name="go">Submit</button></td>
                </tr>
            </tbody>
        </table>
        
                
          
    </body>
    </form>
</html>

<script type="text/javascript">
    
        var firstname=document.forms["vform"]["firstname"];
        var lastname=document.forms["vform"]["lastname"];
        var address=document.forms["vform"]["address"];
        var email=document.forms["vform"]["email"];
        var collagename=document.forms["vform"]["collagename"];
        
        var firstname_error=document.getElementById("firstname_error");
        var lastname_error=document.getElementById("lastname_error");
        var address_error=document.getElementById("address_error");
        var email_error=document.getElementById("email_error");
        var collagename_error=document.getElementById("collagename_error");
        
        firstname.addEventListener("blur",firstnameVerify,true);
        lastname.addEventListener("blur",lastnameVerify,true);
        address.addEventListener("blur",addressVerify,true);
        email.addEventListener("blur",emailVerify,true);
        collagename.addEventListener("blur",collagenameVerify,true);
    function validation()
    {
        if(firstname.value()=="")
        {
            firstname.style.border = "1px solid red";
            firstname_error.textContent="Firstname require!!!";
            firstname.focus();
            return false;
        }
        
        if(lastname.value()=="")
        {
            lastname.style.border = "1px solid red";
           lastaname_error.textContent="Lastname require!!!";
            lastname.focus();
            return false;
        }
        
        if(address.value()=="")
        {
            address.style.border = "1px solid red";
            address_error.textContent="Address require!!!";
            address.focus();
            return false;
        }
        
        if(email.value()=="")
        {
            email.style.border = "1px solid red";
            email_error.textContent="Email require!!!";
            email.focus();
            return false;
        }
        
        if(collagename.value()=="")
        {
            collagename.style.border = "1px solid red";
            collagename_error.textContent="Collage Name require!!!";
            collagename.focus();
            return false;
        }
    }
    function firstnameVerify()
    {
        if(firstname.value !=""){
            firstname.style.border="1px solid #5E6E66";
            firstname_error.innerHTML="";
            return true;
        }
    }
    function lastnameVerify()
    {
        if(lastname.value !=""){
            lastname.style.border="1px solid #5E6E66";
            lastname_error.innerHTML="";
            return true;
        }
    }
    
    function addressVerify()
    {
        if(address.value !=""){
            address.style.border="1px solid #5E6E66";
            address_error.innerHTML="";
            return true;
        }
    }
    function emailVerify()
    {
        if(email.value !=""){
            email.style.border="1px solid #5E6E66";
            email_error.innerHTML="";
            return true;
        }
    }
    function collagenameVerify()
    {
        if(collagename.value !=""){
            collagename.style.border="1px solid #5E6E66";
            collagename_error.innerHTML="";
            return true;
        }
    }
    
    
    </script>