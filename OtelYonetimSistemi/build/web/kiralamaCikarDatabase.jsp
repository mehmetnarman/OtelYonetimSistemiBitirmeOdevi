<%-- 
    Document   : kiralamaCikarDatabase
    Created on : 02.Haz.2022, 11:18:32
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <style>
            #yonlendirme{
                width: 350px;
                height: 150px;
                margin: auto;
                margin-top: 200px;
                text-align: center;
                background-color: rgba(158,158,157,0.5);
                border-radius: 5px;
            }

            p {
                line-height: 50px;
            }
        </style>
        <%
            String id = request.getParameter("id");
            String giris = request.getParameter("giris");
            String cikis = request.getParameter("cikis");
            String odaid = request.getParameter("odaid");

            Connection con = ConnectionPro.getConnection();
            try {
                Statement st = con.createStatement();
                int i = st.executeUpdate("DELETE FROM user WHERE uid= '" + id + "'");
        %>
    <div id="yonlendirme">
        <p id="ptag">Kiralama Silme İşlemi Tamamlandı</p>
        <script>
            setTimeout(saniye3, 3000);
            function saniye3() {
                window.location = "anaSayfaYonetici.jsp";
            }
        </script>
    </div>
    <%
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
        Date dgiris = new SimpleDateFormat("yyyy-MM-dd").parse(giris);
        Date dcikis = new SimpleDateFormat("yyyy-MM-dd").parse(cikis);

        Calendar girisc = Calendar.getInstance();
        Calendar cikisc = Calendar.getInstance();
        girisc.setTime(dgiris);
        cikisc.setTime(dcikis);

        boolean kontrol = true;
        while (kontrol) {
            if (girisc.compareTo(cikisc) < 0) {
                try {
                    Statement st = con.createStatement();
                    SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
                    String tarih = format.format(girisc.getTime());
                    int j = st.executeUpdate("DELETE FROM odatarih WHERE odaid= '" + odaid +"' and tarih='" + tarih +"'");
                    girisc.add(Calendar.DATE, 1);
                } catch (Exception e) {
                    System.out.print(e);
                    e.printStackTrace();
                }
            } else {
                kontrol = false;
            }
        }
    %>
</body>
</html>
