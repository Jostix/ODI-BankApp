<%-- 
    Document   : client
    Created on : 24 nov. 2015, 15:12:29
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

<header id="header">
    <h1></h1>
</header>
<div id="content">
    <div class="well">

        <header>
            <h2><span class="glyphicon glyphicon-user"></span>  <%= RB.getString("customer_page_title")%></h2>
        </header>
        <f:view>
            <h:form id="form">
                <div class="form-group">
                    <h:outputLabel  value="#{msg.customer_number}"/>
                    <h:inputText styleClass="form-control" value="#{customerCreateBean.number}" label="Number" size="30" required="true" requiredMessage="#{msg.customer_create_number_error}" />
                </div>  
                <div class="form-group">
                    <h:outputLabel value="#{msg.customer_firstname}"/>
                    <h:inputText styleClass="form-control" value="#{customerCreateBean.firstname}" label="Firstname" size="50" required="true" requiredMessage="#{msg.customer_create_firstname_error}" />
                </div>  
                <div class="form-group">
                    <h:outputLabel value="#{msg.customer_lastname}"/>
                    <h:inputText styleClass="form-control" value="#{customerCreateBean.lastname}" label="Lastname" size="50" required="true" requiredMessage="#{msg.customer_create_lastname_error}" />
                </div>  
                <div class="form-group">
                    <h:commandButton style="margin-right:15px;" styleClass="btn btn-success" value="#{msg.customer_create_submit}" type="submit" action="#{customerCreateBean.createCustomer}"/>
                    <h:commandButton style="margin-right:15px;" styleClass="btn btn-warning" value="#{msg.customer_create_reset}" type="reset"/>
                    <h:outputLink value="customerList.jsp" styleClass="btn btn-info"><%=  RB.getString("customer_create_back") %></h:outputLink>
                </div> 
                <div class="form-group">  
                    <h:messages errorClass="alert alert-danger"/>
                </div>
            </h:form>

        </f:view>
    </div>
</div>
<%= RB.getString("current_language")%>

<jsp:include page="/includes/footer.jsp" />