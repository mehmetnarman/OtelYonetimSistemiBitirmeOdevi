<%-- 
    Document   : newjsp
    Created on : 12.May.2022, 22:06:21
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="yonetim.bilgiler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <link href="css/kiralama.css" rel="stylesheet" type="text/css"/>
        <title>Odalar</title>
    </head>
    <body>
    <div>
        <div class="conteiner">
            <div class="logo">
                Hoşgeldiniz            
            </div>
            <div class="anasayfa">
                <a href="anaSayfaResepsiyon.jsp">Anasayfa</a>
            </div>
            <div class="dropdown1">
                <button class="dropbtn1">İşlemler</button>
                <div class="dropdown-content1">
                    <a href="standartOda.jsp">Standart Odalar</a>
                    <a href="deluxeOda.jsp">Deluxe Odalar</a>
                    <a href="suitOda.jsp">Suit Odalar</a>
                </div>
            </div>
            <div class="iletisim">
                <a href="iletisim.jsp">İletişim</a>
            </div>
            <div class="dropdown2">
                <button class="dropbtn2"><%out.print(session.getAttribute("name"));
                    %>
                    <br>
                    <%
                        out.print("(Resepsiyon)");
                    %></button>
                <div class="dropdown-content2">
                    <a href="oturumKapat.jsp">Oturumu Kapat</a>
                </div>
            </div>
        </div>
    </div>
    <%
        int[] dolu = new int[18];
        int[] fiyat = new int[19];
        int[] pansiyonFiyat=new int[4];
        String giris = request.getParameter("girisTarihi");
        String cikis = request.getParameter("cikisTarihi");
    %>
    <jsp:useBean id="tarih" class="yonetim.tarih"/>
    <jsp:setProperty name="tarih" property="giris" value="<%= giris%>"/>
    <jsp:setProperty name="tarih" property="cikis" value="<%= cikis%>"/>
    <%
        Connection con = ConnectionPro.getConnection();
        Statement stt = con.createStatement();
        ResultSet rss = stt.executeQuery("select * from otelyonetim.odafiyat");
        try {
            while (rss.next()) {
                fiyat[rss.getInt("oda")] = rss.getInt("fiyat");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        Statement st1 = con.createStatement();
        ResultSet rs1 = st1.executeQuery("select * from otelyonetim.pansiyonfiyat");
        try {
            while (rs1.next()) {
                pansiyonFiyat[rs1.getInt("idpansiyonFiyat")] = rs1.getInt("fiyat");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select distinct odaid from otelyonetim.odatarih where tarih between '" + giris + "' and '" + cikis + "'");
        try {
            int i = 0;
            while (rs.next()) {
                dolu[i] = rs.getInt("odaid");
                i++;
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <div id="odalar">
        <form action="kirala.jsp">
            <p class="baslik">Standart Odaların Durumu</p>
            <%
                for (int i = 1; i <= 6; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == dolu[j]) {
                            kontrol = true;
                        }
                    }
                    if (kontrol) {
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
                <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                <input type="radio" id="<%=i%>" name="kiralanacak" value="<%=i%>">
            </div>
            <%
                    }
                }
            %>
            <p class="baslik">Deluxe Odaların Durumu</p>
            <%
                for (int i = 7; i <= 12; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == dolu[j]) {
                            kontrol = true;
                        }
                    }
                    if (kontrol) {
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
                <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                <input type="radio" id="<%=i%>" name="kiralanacak" value="<%=i%>">
            </div>
            <%
                    }
                }
            %>
            <p class="baslik">Suit Odaların Durumu</p>
            <%
                for (int i = 13; i <= 18; i++) {
                    boolean kontrol = false;
                    for (int j = 0; j <= 17; j++) {
                        if (i == dolu[j]) {
                            kontrol = true;
                        }
                    }
                    if (kontrol) {
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
                <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                <input type="radio" id="<%=i%>" name="kiralanacak" value="<%=i%>">
            </div>
            <%
                    }
                }
            %>
            <div id="pansiyon">
                <hr class="hr1">
                <div id="odaKahvalti">
                    <p>Oda kahvaltı</p><br>
                    <p>Fiyata Ek <%=pansiyonFiyat[1]%> TL</p>
                    <input type="radio" id="<%=pansiyonFiyat[1]%>" name="pansiyonTipi" value="<%=pansiyonFiyat[1]%>" checked>
                </div>
                <div id="yarimPansiyon">
                    <p>Yarım Pansiyon</p><br>
                    <p>Fiyata Ek <%=pansiyonFiyat[2]%> TL</p>
                    <input type="radio" id="<%=pansiyonFiyat[2]%>" name="pansiyonTipi" value="<%=pansiyonFiyat[2]%>">
                </div>
                <div id="tamPansiyon">
                    <p>Tam Pansiyon</p><br>
                    <p>Fiyata Ek <%=pansiyonFiyat[3]%> TL</p>
                    <input type="radio" id="<%=pansiyonFiyat[3]%>" name="pansiyonTipi" value="<%=pansiyonFiyat[3]%>">
                </div>
            </div>
            <hr class="hr1">
            <div class="buton">
                <input class="butt" type="submit" value="Seçilen Odayı Kirala">
            </div>
        </form>
    </div>
</body>
</html>