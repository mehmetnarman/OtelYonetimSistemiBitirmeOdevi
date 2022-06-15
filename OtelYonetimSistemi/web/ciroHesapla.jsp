<%-- 
    Document   : ciroHesapla
    Created on : 31.May.2022, 20:55:48
    Author     : Mehmet NARMAN
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/ciroHesapla.css" rel="stylesheet" type="text/css"/>
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <title>Otel Yönetim Sistemi</title>
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
                    <a href="yoneticiSifreDegistir.jsp">Şifre Değiştir</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="hr1">
    <div class="cirotarihleri">
        <form name="tarih" action="ciroHesaplaDatabase.jsp" method="post">
            <div class="girisTarihi">
                <label for="girisTarihi">Başlangıç Tarihi<label><br>
                        <input id="giris" type="date" name="girisTarihi" required/>
                        </div>
                        <div class="cikisTarihi">
                            <label for="cikisTarihi">Bitiş Tarihi<label><br>
                        <input type="date" id="cikis" name="cikisTarihi" required/>
                                    </div>
                                    <input type="submit" value="Ara">
                                        </form>
                                        </div>
                                        
    <script>
        var today=new Date();
        var today1=new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();

        if (dd < 10) {
           dd = '0' + dd;
        }
        if (mm < 10) {
           mm = '0' + mm;
        }

        today = yyyy + '-' + mm + '-' + dd;
        document.getElementById('giris').setAttribute("value", today);
        document.getElementById('giris').setAttribute("max", today);
        document.getElementById('cikis').setAttribute("value", today);
        document.getElementById('cikis').setAttribute("max", today);
    </script>
    </body>
    </html>

