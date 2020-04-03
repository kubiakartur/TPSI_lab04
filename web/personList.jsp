<%-- 
    Document   : personList
    Created on : 2020-04-02, 23:31:55
    Author     : Moya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4 zadanie 3</title>
    </head>
    <body>
        <table>
            <c:forEach items="${listaOsob}" var="osoba">
                <p> 
                    <tr>
                        <td>${osoba.getFirstName()} </td>
                        <td>${osoba.getLastName()} </td>
                        <td>${osoba.getEmail()}</td>
                    </tr>
                </p>
            </c:forEach>
        </table>
    </body>
</html>