<%-- 
    Document   : createAccountOk
    Created on : 26 nov. 2015, 16:59:17
    Author     : Romain Ducret <romain.ducret1@he-arc.ch>
--%>

<%@page import="java.util.ResourceBundle"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Locale"%>

<%
    String lang;
    //Passe le menu en anglais si on se trouve sur l'index.
    if (request.getRequestURL().toString().toLowerCase().contains("customerList".toLowerCase())) {
        lang = "en";
    } else {
        lang = request.getLocale().toString();
    }

    ResourceBundle RB = ResourceBundle.getBundle("ch.hearc.ig.odi.customeraccount.lang/messages", new Locale(lang));
%>       

<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/navbar.jsp" />

<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<header>
    <h2><span class="glyphicon glyphicon-ok"></span>  <%= RB.getString("account_add_succes_title")%></h2>
</header>

<div class="alert alert-success" role="alert">
    <%= RB.getString("account_add_succes_message")%>
</div>

<a href="customerDetail.jsp" class="btn btn-info"><%= RB.getString("account_add_succes_back")%></a>

<jsp:include page="/includes/footer.jsp" />
