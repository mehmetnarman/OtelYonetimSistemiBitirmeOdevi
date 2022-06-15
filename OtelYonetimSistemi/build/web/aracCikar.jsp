<%-- 
    Document   : aracCikar
    Created on : 26.May.2022, 08:39:20
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
        String otopark[] = request.getParameterValues("otopark");
        if (otopark != null) {
            for (int i = 0; i < otopark.length; i++) {
                try {
                    Connection con = ConnectionPro.getConnection();
                    Statement st = con.createStatement();
                    int j = st.executeUpdate("DELETE FROM otopark where odaNo='" + otopark[i] + "' ");
                } catch (Exception e) {
                    System.out.print(e);
                }
            }
            response.sendRedirect("anaSayfaOtopark.jsp");
        }


    %>
</body>
</html>
