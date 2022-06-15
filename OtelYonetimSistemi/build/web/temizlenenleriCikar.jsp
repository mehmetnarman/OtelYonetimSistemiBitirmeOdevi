<%-- 
    Document   : newjsp1temizlenenleriCikar
    Created on : 16.May.2022, 22:33:19
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
        String temizlenenler[] = request.getParameterValues("temiz");
        if (temizlenenler != null) {
            for (int i = 0; i < temizlenenler.length; i++) {
                try {
                    Connection con = ConnectionPro.getConnection();
                    Statement st = con.createStatement();
                    int j = st.executeUpdate("DELETE FROM temizlenecekoda where odaNo='" + temizlenenler[i] + "' ");
                } catch (Exception e) {
                    System.out.print(e);
                }
            }
            response.sendRedirect("anaSayfaTemizlikci.jsp");
        }


    %>
</body>
</html>
