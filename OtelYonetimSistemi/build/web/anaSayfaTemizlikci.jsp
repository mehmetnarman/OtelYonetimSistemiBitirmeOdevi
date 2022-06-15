<%-- 
    Document   : anaSayfaTemizlikci
    Created on : 19.Mar.2022, 21:52:47
    Author     : Mehmet NARMAN
--%>

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
            <a href="anaSayfaTemizlikci.jsp">Anasayfa</a>
        </div>
        <div class="dropdown1">
            <button class="dropbtn1">Liste İşlemleri</button>
            <div class="dropdown-content1">
                <a href="anaSayfaTemizlikci.jsp">Sayfayı Yenile</a>
                <a href="temizlenecekOdalariYenileUyarisi.jsp">Liste Güncelle</a>
            </div>
        </div>
            <div class="dropdown2">
                <button class="dropbtn2"><%out.print(session.getAttribute("name"));
                    %>
                    <br>
                    <%
                        out.print("(Temizlikçi)");
                    %></button>
                <div class="dropdown-content2">
                    <a href="oturumKapat.jsp">Oturumu Kapat</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="hr1">
    <%
        int[] kirli=new int[18];
        
        Connection con = ConnectionPro.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select distinct odaNo from temizlenecekoda");
        try {
            int i=0;
            while (rs.next()) {
                kirli[i]=rs.getInt("odano");
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }        
    %>
<div id="odalar">
        <form action="temizlenenleriCikar.jsp">
            <p class="baslik">Standart Odaların Temizlik Durumu</p>
            <%
                for (int i = 1; i <= 6; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == kirli[j]) {
                            kontrol = true;
                        }
                    }
                    if (!kontrol) {
            %>
            <div class="doluoda">
                <p class="odano"> <%=i%></p>
            </div>
            <%
            } else {
            %>
            <div class="bosoda">
                <p class="odano"> <%=i%></p>
                <input type="checkbox" id="<%=i%>" name="temiz" value="<%=i%>">
            </div>
            <%
                    }
                }
            %>
            <p class="baslik">Deluxe Odaların Temizlik Durumu</p>
            <%
                for (int i = 7; i <= 12; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == kirli[j]) {
                            kontrol = true;
                        }
                    }
                    if (!kontrol) {
            %>
            <div class="doluoda">
                <p class="odano"> <%=i%></p>
            </div>
            <%
            } else {
            %>
            <div class="bosoda">
                <p class="odano"> <%=i%></p>
                <input type="checkbox" id="<%=i%>" name="temiz" value="<%=i%>">
            </div>
            <%
                    }
                }
            %>
            <p class="baslik">Suit Odaların Temizlik Durumu</p>
            <%
                for (int i = 13; i <= 18; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == kirli[j]) {
                            kontrol = true;
                        }
                    }
                    if (!kontrol) {
            %>
            <div class="doluoda">
                <p class="odano"> <%=i%></p>
            </div>
            <%
            } else {
            %>
            <div class="bosoda">
                <p class="odano"> <%=i%></p>
                <input type="checkbox" id="<%=i%>" name="temiz" value="<%=i%>">
            </div>
            <%
                    }
                }
            %>
            <div class="buton">
            <input class="butt" type="submit" value="Temizle">
            </div>
        </form>
    </div>
    
</body>
</html>
