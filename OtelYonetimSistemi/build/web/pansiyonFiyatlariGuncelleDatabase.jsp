<%-- 
    Document   : pansiyonFiyatlariGuncelleDatabase
    Created on : 31.May.2022, 20:48:20
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="java.sql.*"%>
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
            String pansiyonTipi = request.getParameter("pansiyonTipi");
            String yeniFiyat=request.getParameter("yeniFiyat");
            
            try {
                Connection con = ConnectionPro.getConnection();
                Statement st = con.createStatement();
                int i = st.executeUpdate("update pansiyonfiyat set fiyat='"+ yeniFiyat +"' where pansiyonTipi='"+pansiyonTipi+"'");
        %>
        
    <div id="yonlendirme">
        <p id="ptag">Fiyat Değiştirme İşlemi Tamamlandı</p>
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
    %>
</body>
</html>