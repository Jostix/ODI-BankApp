<%-- 
    Document   : createCustomerOk
    Created on : 25 nov. 2015, 03:37:07
    Author     : Romain
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
    <h2><span class="glyphicon glyphicon-ok"></span>  <%= RB.getString("customer_add_succes_title")%></h2>
</header>

<div class="alert alert-success" role="alert">
    <%= RB.getString("customer_add_succes_message")%>
</div>

<a href="customerList.jsp" class="btn btn-info"><%= RB.getString("customer_add_succes_home")%></a>

<jsp:include page="/includes/footer.jsp" />
