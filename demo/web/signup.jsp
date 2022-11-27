<%-- 
    Document   : signup
    Created on : Sep 5, 2022, 11:10:31 AM
    Author     : anush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
                body {
 background-color: lightseagreen;
 
}
            </style>
    </head>
    <body>
        <h1>sign up</h1>
        <form action="./signup" method="get">
        <table>
            
            
            <tr>
                <td>first name</td><td><input type="text"name="fname"id="fname" pattern="^[A-Za-z -]+$" title="Insert valid name" required/></td>
            </tr>
            <tr>
               <td>last name</td><td><input type="text"name="lname"id="lname"</td>
            </tr>
            <tr>
                <td>email</td><td><input type="text"name="email"id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Insert valid email id" required/></td>
            </tr>
            <tr>
                <td>mobile</td><td><input type="number"name="mobile"id="mobile" pattern="[6789][0-9]{9}" title="Mobile No should start with 6/7/8/9 and 10 digit" required/></td>

            </tr>
            <tr>
                <td>password</td><td><input type="text"name="pass"id="pass"</td>
            </tr>
            <tr>
                 <td>confirm</td><td><input type="text"name="cpass"id="cpass"</td>
            </tr>
            <tr>
                <td></td><td><input type="submit"name="submit"value="register"</td>
            </tr>
            
            
           
           
            </table>
            
        </form>
    </body>
</html>
