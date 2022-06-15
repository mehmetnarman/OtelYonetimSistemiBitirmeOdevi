<%-- 
    Document   : rezervasyonCikar
    Created on : 02.Haz.2022, 11:06:23
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link href="css/menu.css" rel="stylesheet" type="text/css"/>
    <link href="css/silmeler.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<div>
    <div class="conteiner">
        <div class="logo">
            Hoşgeldiniz            
        </div>
        <div class="anasayfa">
            <a href="anaSayfaYonetici.jsp">Anasayfa</a>
        </div>
        <div class="dropdown1">
            <button class="dropbtn1">Kullanıcı İşlemleri</button>
            <div class="dropdown-content1">
                <a href="calisanEkleResepsiyon.jsp">Resepsiyon Ekle</a>
                <a href="calisanEkleTemizlikci.jsp">Temizlikçi Ekle</a>
                <a href="calisanEkleVale.jsp">Vale Ekle</a>
                <a href="kiralamaCikar.jsp">Kiralama Çıkar</a>
                <a href="calisanCikar.jsp">Çalışan Çıkar</a>
                <a href="sifreIslemleri.jsp">Şifre İşlemleri</a>
            </div>
        </div>
        <div class="dropdown1">
            <button class="dropbtn1">Fiyat Güncellemeleri</button>
            <div class="dropdown-content1">
                <a href="odaFiyatlariGuncelle.jsp">Oda Fiyatlarını Güncelle</a>
                <a href="pansiyonFiyatlariGuncelle.jsp">Pansiyon Fiyatlarını Güncelle</a>
                <a href="ciroHesapla.jsp">Ciro Hesapla</a>
            </div>
        </div>
        <div class="dropdown2">
            <button class="dropbtn2"><%out.print(session.getAttribute("name"));
                %>
                <br>
                <%
                    out.print("(Yönetici)");
                %></button>
            <div class="dropdown-content2">
                <a href="oturumKapat.jsp">Oturumu Kapat</a>
                <a href="calisanGirisi.jsp">Şifre Değiştir</a>
            </div>
        </div>
    </div>
</div>
<hr class="hr1">
<div class="genelAlan">
    <table class="tablo" border="1">
        <tr>
            <td class="anatd">Adı Soyadı</td>
            <td class="anatd">T.C. Kimlik Numarası</td>
            <td class="anatd">Telefon</td>
            <td class="anatd">Plaka</td>
            <td class="anatd">Oda No</td>
            <td class="anatd">Giriş Tarihi</td>
            <td class="anatd">Çıkış Tarihi</td>
            <td class="anatd">Ödenecek Tutar</td>
            <td class="anatd">İşlem</td>
        </tr>
        <%
            Connection con = ConnectionPro.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from otelyonetim.user");
            try {
                int i = 0;
                while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("tc")%></td>
            <td><%=rs.getString("telefon")%></td>
            <td><%=rs.getString("plaka")%></td>
            <td><%=rs.getString("odano")%></td>
            <td><%=rs.getString("giris")%></td>
            <td><%=rs.getString("cikis")%></td>
            <td><%=rs.getString("odenecektutar")%></td>
            <td><a href="kiralamaCikarDatabase.jsp?id=<%=rs.getString("uid")%>&giris=<%=rs.getString("giris")%>&cikis=<%=rs.getString("cikis")%>&odaid=<%=rs.getString("odano")%>"><button type="button"  class="sil">Kiralamayı Sil</button></a></td>
        </tr>
        <%  i++;
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</div>
</body>
</html>
