<%-- 
    Document   : ciroHesaplaDatabase
    Created on : 31.May.2022, 22:05:04
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
    <title>JSP Page</title>
</head>
<body>
    <style>
        body{
            background-color: rgb(177,204,235);
        }
        .anaAlan{
            width: 90%;
            margin: auto;
            min-height: 800px;
        }
        .altAlan{
            position: relative;
            width: 100%;
            height: 400px;
            margin-top: 150px;
        }
        .Ciro{
            width: 100%;
            height: 100%;
            text-align: center;
            font-size: 30px;
            border-radius: 10px;
            background-color: rgba(47, 53, 66,0.5);
            padding-top: 70px;
        }
    </style>
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
                    <a href="yoneticiSifreDegistir.jsp">Şifre Değiştir</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="hr1">
    <%
        String giris = request.getParameter("girisTarihi");
        String cikis = request.getParameter("cikisTarihi");
        SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd");
        Date girisd=formatter1.parse(giris);
        Date cikisd=formatter1.parse(cikis);
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        String girisf= format.format(girisd);
        String cikisf=format.format(cikisd);
        int Ciro = 0;

        Connection con = ConnectionPro.getConnection();
        Statement Cirost = con.createStatement();
        ResultSet Cirors = Cirost.executeQuery("select * from otelyonetim.user where giris >= '" + giris + "' and cikis <= '" + cikis + "'");
        try {
            int i = 0;
            while (Cirors.next()) {
                Ciro += Cirors.getInt("odenecektutar");
                i++;
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
<div class="anaAlan">
    <div class="altAlan">
        <div class="Ciro">
            <p><%=girisf%> İle <%=cikisf%> Tarihleri Arası Toplam Ciro</p>
            <p><%out.print(Ciro + " TL");%></p>
        </div>
    </div>
</div>
</body>
</html>
