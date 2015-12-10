<%-- 
    Document   : createAccount
    Created on : 26 nov. 2015, 16:59:03
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
            <h2><span class="glyphicon glyphicon-user"></span>  <%= RB.getString("account_page_title")%></h2>
        </header>
        <f:view>
            <h:form id="form">
                <div class="form-group">
                    <h:outputLabel  value="#{msg.account_number}"/>
                    <h:inputText styleClass="form-control" value="#{AccountCreateBean.number}" label="Number" size="30" required="true" requiredMessage="#{msg.account_create_number_error}" />
                </div>  
                <div class="form-group">
                    <h:outputLabel value="#{msg.account_description}"/>
                    <h:inputText styleClass="form-control" value="#{AccountCreateBean.name}" label="Name" size="50" required="true" requiredMessage="#{msg.account_create_name_error}" />
                </div>  
                <div class="form-group">
                    <h:outputLabel value="#{msg.account_rate}"/>
                    <h:inputText styleClass="form-control" value="#{AccountCreateBean.rate}" label="Rate" size="30" required="true" requiredMessage="#{msg.account_create_rate_error}" />
                </div> 
                <div class="form-group">
                    <h:commandButton style="margin-right:15px;" styleClass="btn btn-success" value="#{msg.customer_create_submit}" type="submit" action="#{AccountCreateBean.createAccount(CustomerDetailBean.number)}"/>
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