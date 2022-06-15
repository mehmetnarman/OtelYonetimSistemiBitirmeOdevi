<%-- 
    Document   : calisanEkleVale
    Created on : 31.May.2022, 14:40:06
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Çalışan Girişi</title>
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
    <section class="login">
        <div class="card z-depth-3">
            <div class="card-panel center grey accent-2">
                <span class="card-title">Vale Ekle</span>
            </div>
            <form class="form" action="calisanEkleDatabase.jsp" method="post"> 
                <div class="input-field"><br></br>
                    <input type="text" placeholder="Adı" class="validate" name="adi" required>
                </div>
                <div class="input-field"><br></br>
                    <input type="email" placeholder="Email" class="validate" name="email" required>
                </div>
                <div class="input-field"><br></br>
                    <input type="text" placeholder="Şifre" class="validate" name="password" required>
                </div>
                <input type="hidden" id="tip" name="tip" value="vale">
                <div class="center">
                    <button type="submit" class="btn-large grey accent-2">
                        Kaydet
                    </button>
                </div>
            </form>
        </div>
    </section>
    <jsp:include page="footer.jsp"/>
</body>
</html>
