<%-- 
    Document   : search.jsp
    Created on : 13 Sep, 2022, 10:41:48 PM
    Author     : spoor
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
        
        <h1>Search</h1>
         <form action="./search" method="post">
             
            <h2>Search by email</h2>
            <label for="email"> email</label>
            <input type ="text" name="email" id="email"><br><br>
            <input type="submit"name="search"><br><br><br>
             
            <h2>Search by mobile</h2>
             <label for="mobile"> mobile</label>
            <input type ="text" name="mobile" id="mobile"><br><br>
            <input type="submit"name="search"><br><br><br><br>
                               
        </form>
    </body>
</html>
