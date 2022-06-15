<%-- 
    Document   : anaSayfaOtopark
    Created on : 24.May.2022, 13:21:08
    Author     : Mehmet NARMAN
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*" %>
<%@page import="yonetim.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">
        <link href="css/anaSayfa.css" rel="stylesheet" type="text/css"/>
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <link href="css/kiralama.css" rel="stylesheet" type="text/css"/>
        <title>Otel Yönetim Sistemi</title>
    </head>
    <body>
    <div>
        <div class="conteiner">
            <div class="logo">
                Hoşgeldiniz            
            </div>
            <div class="anasayfa">
                <a href="anaSayfaOtopark.jsp">Anasayfa</a>
            </div>
            <div class="dropdown1">
                <button class="dropbtn1">Liste İşlemleri</button>
                <div class="dropdown-content1">
                    <a href="anaSayfaOtopark.jsp">Sayfayı Yenile</a>
                    <a href="otoparkYenileUyarisi.jsp">Liste Güncelle</a>
                </div>
            </div>
            <div class="dropdown2">
                <button class="dropbtn2"><%out.print(session.getAttribute("name"));
                    %>
                    <br>
                    <%
                        out.print("(Vale)");
                    %></button>
                <div class="dropdown-content2">
                    <a href="oturumKapat.jsp">Oturumu Kapat</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="hr1">
    <%
        String[] araclar = new String[18];
        int[] odano = new int[18];
        try {
        Connection con = ConnectionPro.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from otopark");
            int i = 1;
            while (rs.next()) {
                araclar[i] = rs.getString("plaka");
                odano[i] = rs.getInt("odano");
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <div id="odalar">
        <form action="aracCikar.jsp">
            <p class="baslik">Standart Odaların Otopark Durumu</p>
            <% int temp=0;
                for (int i = 1; i <= 6; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == odano[j]) {
                            kontrol = true;
                            temp=j;
                        }
                    }
                    if (!kontrol) {
            %>
            <div class="doluoda">
                <p class="odano"> <%=i%></p>
                <p>.</p>
            </div>
            <%
            } else {
            %>
            <div class="bosoda">
                <p class="odano"> <%=i%></p>
                <%
                String deger1=araclar[temp];
                    if (deger1.length()==0){
                %>
                <p>Araç Yok</p>
                <%
                } else{
                %>
                <p>
                    <%=araclar[temp]%>
                </p>
                <input type="checkbox" id="<%=i%>" name="otopark" value="<%=i%>">
                <%
                    }
                %>
            </div>
            <%
                    }
                }
            %>
            <p class="baslik">Deluxe Odaların Otopark Durumu</p>
           <% temp=0;
                for (int i = 7; i <= 12; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == odano[j]) {
                            kontrol = true;
                            temp=j;
                        }
                    }
                    if (!kontrol) {
            %>
            <div class="doluoda">
                <p class="odano"> <%=i%></p>
                <p>.</p>
            </div>
            <%
            } else {
            %>
            <div class="bosoda">
                <p class="odano"> <%=i%></p>
                <%
                String deger1=araclar[temp];
                    if (deger1.length()==0){
                %>
                <p>Araç Yok</p>
                <%
                } else{
                %>
                <p>
                    <%=araclar[temp]%>
                </p>
                <input type="checkbox" id="<%=i%>" name="otopark" value="<%=i%>">
                <%
                    }
                %>
            </div>
            <%
                    }
                }
            %>
            <p class="baslik">Suit Odaların Temizlik Durumu</p>
            <% temp=0;
                for (int i = 12; i <= 17; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == odano[j]) {
                            kontrol = true;
                            temp=j;
                        }
                    }
                    if (!kontrol) {
            %>
            <div class="doluoda">
                <p class="odano"> <%=i%></p>
                <p>.</p>
            </div>
            <%
            } else {
            %>
            <div class="bosoda">
                <p class="odano"> <%=i%></p>
                <%
                String deger1=araclar[temp];
                    if (deger1.length()==0){
                %>
                <p>Araç Yok</p>
                <%
                } else{
                %>
                <p>
                    <%=araclar[temp]%>
                </p>
                <input type="checkbox" id="<%=i%>" name="otopark" value="<%=i%>">
                <%
                    }
                %>
            </div>
            <%
                    }
                }
            %>

            <div class="buton">
                <input class="butt" type="submit" value="Çıkar">
            </div>
        </form>
    </div>
</body>
</html>