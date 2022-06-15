<%-- 
    Document   : oturumKapat
    Created on : 16.Mar.2022, 15:31:45
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.invalidate();
    response.sendRedirect("anaSayfa.jsp");
%>
