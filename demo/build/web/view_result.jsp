<%-- 
    Document   : view_user_details.jsp
    Created on : 12 Sep, 2022, 10:59:38 AM
    Author     : spoor
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Database.DBQuery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, td,td,th{
                border: 1px solid black;
                border-collapse: collapse;
            }
            body{
               background-color: lightseagreen;
            }
        </style>
    </head>
    <body>
        <h1>user details</h1>
     
       
        <table>
            <tr> <th> first_name</th> <th>last_name</th> <th>email</th><th>mobile</th>
        <%
            
            ArrayList al = (ArrayList)session.getAttribute("data");
       
            for(int i=0;i < al.size(); i++)
            {
                String a = al.get(i).toString();
                System.out.println(a);
                String arr[] = a.split("##");
            
            %>
            <tr><td> <%=arr[0]%></td> <td><%=arr[1]%></td> <td><%=arr[2]%></td> <td><%=arr[3]%></td></tr>
            <%
                }
            %>

        </table>   
    </body>
</html>
