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

<h1><span class="glyphicon glyphicon-home"></span> <%= RB.getString("navbar_home")%></h1>

<f:view>
    <h:form id="frmCustomersList">
        <h:dataTable id="dtCustomers" var="cust" value="#{CustomersBean.customers}" styleClass="table">

            <h:column>
                <f:facet name="header">
                    <h:outputText value="#{msg.customer_number}" />
                </f:facet>  
                <h:outputText id="oTxtNumber1" value ="#{cust.number}"/>
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="#{msg.customer_firstname}" />
                </f:facet> 
                <h:outputText id="oTxtName" value ="#{cust.firstName}"/>
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="#{msg.customer_lastname}" />
                </f:facet>  
                <h:outputText id="oTxtLastname" value ="#{cust.lastName}"/>

            </h:column>
            <h:column>
                <h:commandLink action="#{CustomerDetailBean.detailAction(cust.number)}" value="#{msg.customer_list_detail}"  styleClass="btn btn-xs btn-info" ></h:commandLink>
            </h:column>
        </h:dataTable>
        <h:commandButton action="createCustomer" value="#{msg.customer_list_add}" styleClass="btn btn-info"/>
    </h:form>


</f:view>

<%= RB.getString("current_language")%>

<jsp:include page="/includes/footer.jsp" />