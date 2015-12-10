<%-- 
    Document   : header
    Created on : 24 nov. 2015, 14:19:12
    Author     : Romain Ducret <romain.ducret1@he-arc.ch>
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="fr" />
<fmt:setBundle basename="ch.hearc.ig.odi.customeraccount.lang" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">

        <link href="includes/custom.css" rel="stylesheet"></link>

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>

        <!-- Jquery -->
        <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>

        <title>ODI - Bank App</title>
        <!--<f:loadBundle basename="ch.hearc.ig.odi.customeraccounts.messages.Messages" var="msg" />-->
    </head>
    <body>

    <fmt:message key="message.jsf" />

    <div class="container">