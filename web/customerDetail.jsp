<%-- 
    Document   : index
    Created on : 24 nov. 2015, 19:19:09
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

<h1><span class="glyphicon glyphicon-home"></span> Détails du client</h1>

<f:view>
    <span style='font-weight:bold;'><h:outputText id="t1" value ="#{msg.customer_number}:"/></span>
    <h:outputText id="o1" value ="#{CustomerDetailBean.number}"/><br/>
    <span style='font-weight:bold;'><h:outputText id="t2" value ="#{msg.customer_firstname}:"/></span>
    <h:outputText id="o2" value ="#{CustomerDetailBean.firstname}"/><br/>
    <span style='font-weight:bold;'><h:outputText id="t3" value ="#{msg.customer_lastname}:"/></span>
    <h:outputText id="o3" value ="#{CustomerDetailBean.lastname}"/>

    <h2><span class="glyphicon glyphicon-home"></span> Liste des comptes</h2>
    <h:form id="frmCustomersList">
        <h:dataTable id="dtCustomers" var="acc" value="#{CustomerDetailBean.accounts}" styleClass="table">

            <h:column>
                <f:facet name="header">
                    <h:outputText value="#{msg.account_number}" />
                </f:facet>  
                <h:outputText id="oTxtNumber1" value ="#{acc.number}"/>
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="#{msg.account_description}" />
                </f:facet> 
                <h:outputText id="oTxtName" value ="#{acc.name}"/>
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="#{msg.account_balance}" />
                </f:facet>  
                <h:outputText id="oTxtLastname" value ="#{acc.balance}"/>

            </h:column>
            <h:column>
                <f:facet name="header">
                    <h:outputText value="#{msg.account_rate}" />
                </f:facet>  
                <h:outputText id="oTxtRate" value ="#{acc.rate}"/>

            </h:column>
            <h:column>
                <h:commandLink action="#{AccountDetailBean.detailAction(CustomerDetailBean.number,acc.number)}" value="#{msg.customer_list_detail}"  styleClass="btn btn-xs btn-info" ></h:commandLink>
            </h:column>

        </h:dataTable>
        <h:outputLink value="customerList.jsp" styleClass="btn btn-info"><%=  RB.getString("customer_create_back")%></h:outputLink><br/><br/>
        <h:commandButton action="createAccount" value="#{msg.customer_list_add}" styleClass="btn btn-info"/>
    </h:form>
</f:view>

<%= RB.getString("current_language")%>

<jsp:include page="/includes/footer.jsp" />