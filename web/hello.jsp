<%-- 
    Document   : hello
    Created on : 2020-03-30, 15:22:55
    Author     : Moya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4 zadanie 1/2</title>
    </head>
    <body>
        <h1>Cześć, ${person.firstName} ${person.lastName}! <a href="mailto:${person.email}">Mail</a></h1>
        <h1>Cześć, <c:out value="${person.firstName}"/>!</h1>
    </body>
</html>


<%-- 
Zadanie 2
<span style='color: pink'>Piotr</span> w pierwszym przypadku ${person.firstName} imie zmienia kolor
na rozowym, a w drugim przypadku <c:out value="${person.firstName}"/> nie dzieje się nic.
<script>alert('Jestem zlym hackerem i zaraz cie zjem!');</script> tak samo jak wyzej w pierwszym
przypadku ${person.firstName} wyswietla komunikat o hackerze, a w drugim przypadku wyswietla sie polecenie
ktore wpisalismy do forma.

Mozemy wywnioskowac, ze bezpieczeniej uzywac polecenia <c:out value="${person.firstName}"/>, poniewaz 
jestesmy wtedy w miare bardziej odporni na polecenia wpisane w formularzach.
--%>