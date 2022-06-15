<%-- 
    Document   : temizlenecekOdalarıYenile
    Created on : 22.Nis.2022, 00:34:38
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
    int[] temizlenecek = new int[18];
    Date bugun=new Date();
    Calendar dunc= Calendar.getInstance();
    dunc.setTime(bugun);
    dunc.add(Calendar.DATE,-1);
        SimpleDateFormat format=new SimpleDateFormat("yyyy/MM/dd");
        String dunFormat = format.format(dunc.getTime());
        Connection con = ConnectionPro.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select distinct odaid from otelyonetim.odatarih where tarih='" + dunFormat + "'");
        try {
            int i = 0;
            while (rs.next()) {
                temizlenecek[i] = rs.getInt("odaid");
                i++;
            }
            int s = st.executeUpdate("delete from temizlenecekoda");
            for(int k=0;k<i;k++){
            int j = st.executeUpdate("insert into temizlenecekOda(odaNo)values('" + temizlenecek[k] + "')");
            }
            response.sendRedirect("anaSayfaTemizlikci.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }   
    %>
</body>
</html>
