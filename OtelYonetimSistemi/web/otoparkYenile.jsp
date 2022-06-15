<%-- 
    Document   : otoparkYenile
    Created on : 25.May.2022, 10:44:23
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
        String[] araclar = new String[18];
        int[] odano = new int[18];
        Date bugun = new Date();
        Calendar bugunc = Calendar.getInstance();
        bugunc.setTime(bugun);
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        String bugunFormat = format.format(bugunc.getTime());
        Connection con = ConnectionPro.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from otelyonetim.user where cikis='" + bugunFormat + "'");
        try {
            int i = 0;
            while (rs.next()) {
                araclar[i] = rs.getString("plaka");
                odano[i]=rs.getInt("odano");
                i++;
            }
            int s = st.executeUpdate("delete from otopark");
            for (int k = 0; k < i; k++) {
                int j = st.executeUpdate("insert into otopark(odano,plaka)values('" + odano[k] + "', '" + araclar[k] + "')");
            }
            response.sendRedirect("anaSayfaOtopark.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>