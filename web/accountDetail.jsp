<%-- 
    Document   : accountDetail
    Created on : 26 nov. 2015, 16:11:20
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

<h1><span class="glyphicon glyphicon-home"></span> Détails du compte</h1>

<f:view>
    <span style='font-weight:bold;'><h:outputText id="t1" value ="#{msg.account_number}:"/></span>
    <h:outputText id="o1" value ="#{AccountDetailBean.number}"/><br/>
    <span style='font-weight:bold;'><h:outputText id="t2" value ="#{msg.account_description}:"/></span>
    <h:outputText id="o2" value ="#{AccountDetailBean.name}"/><br/>
    <span style='font-weight:bold;'><h:outputText id="t3" value ="#{msg.account_balance}:"/></span>
    <h:outputText id="o3" value ="#{AccountDetailBean.balance}"/><br/>
    <span style='font-weight:bold;'><h:outputText id="t4" value ="#{msg.account_rate}:"/></span>
    <h:outputText id="o4" value ="#{AccountDetailBean.rate}"/><br/><br/>
    <h:outputLink value="customerList.jsp" styleClass="btn btn-info"><%=  RB.getString("customer_create_back")%></h:outputLink><br/><br/>
    <h:outputLink value="customerDetail.jsp" styleClass="btn btn-info"><%=  RB.getString("msg_back_client")%></h:outputLink>
</f:view>