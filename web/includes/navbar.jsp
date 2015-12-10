<%-- 
    Document   : navbar
    Created on : 24 nov. 2015, 19:15:51
    Author     : Romain Ducret <romain.ducret1@he-arc.ch>
--%>
<%@page import="java.io.File"%>
<%@page import="java.util.ResourceBundle"%>
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

<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<nav class="navbar navbar-default" style="margin-top:50px;">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Bank App</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="customerList.jsp"><%= RB.getString("navbar_customer_list") %></a></li>
                <li><a href="faces/createCustomer.jsp"><%= RB.getString("navbar_customer_create") %></a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>