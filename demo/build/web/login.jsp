<%-- 
    Document   : login.jsp
    Created on : 9 Sep, 2022, 11:00:04 AM
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
        <h1>Login page</h1>
        <form action="./login" method="post">
              <table>
                <tr>
                <td>email Id</td><td><input type="text"name="email"id="email"</td>
            </tr>
            <tr>
                <td>password</td><td><input type="text"name="password"id="password"</td>
            </tr>
             <tr>
                <td></td><td><input type="submit"name="submit"value="submit"</td>
            </tr>
            </table>
    </body>
</html>
