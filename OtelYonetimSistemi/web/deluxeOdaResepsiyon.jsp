<%-- 
    Document   : deluxeOdaResepsiyon
    Created on : 01.Haz.2022, 10:04:48
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">--%>
        <link href="css/odalar.css" rel="stylesheet" type="text/css"/>
    <title>Deluxe Odalar</title>
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
                <button class="dropbtn1">Otel Bilgilendirmeleri</button>
                <div class="dropdown-content1">
                    <a href="standartOdaResepsiyon.jsp">Standart Odalar</a>
                    <a href="deluxeOdaResepsiyon.jsp">Deluxe Odalar</a>
                    <a href="suitOdaResepsiyon.jsp">Suit Odalar</a>
                </div>
            </div>
            <div class="iletisim">
                <a href="iletisimResepsiyon.jsp">İletişim</a>
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
    <hr>
    <div class="fotograf">
        <img src="image/deniz.jpg" alt="Fotograf" style="width:100%;height:100%;"/>
    </div>
    <div id="basyazi">
    <p id="baslik">
        Standart Çift Kişilik Oda
    </p>
    <p id="yazi">
        Sevdiklerinizle huzur ve rahatlığın tadını çıkarın.
    </p>
    </div>
    <div class="odaFotograf">
        <div class="standart">
                <div class="standartYazi">
                    <img src="image/deluxe1.jpeg" alt="Deluxe Oda"/>
                </div>
        </div>
        <div class="standart">
                <div class="standartYazi">
                    <img src="image/deluxe2.jpeg" alt="Deluxe Oda"/>
                    <p>Deluxe Oda</p>
                </div>
        </div><div class="standart">
                <div class="standartYazi">
                    <img src="image/deluxe3.jpeg" alt="Deluxe Oda"/>
                </div>
        </div>
    </div>
    <div id="aciklama">
        <h4>Oda Özellikleri</h4>
        <ul class="a">
            <li>Deniz Manzaralı</li>
            <li>Ücretsiz Yüksek Hızlı Kablosuz İnternet Bağlantısı</li>
            <li>SPA & Fitness Merkezine Ücretsiz Giriş</li>
            <li>LCD TV</li>
            <li>Elektronik Kasa</li>
            <li>Minibar</li>
            <li>Dijital Klima</li>
            <li>Hergün Yenilenen Çay ve Kahve İkramı İçin Su Isıtıcı</li>
        </ul>
    </div>
    <div id="aciklama">
        <h4>Oda Detayları</h4>
        <ul class="a">
            <li>Yatak :	1 Adet 140x200 - 1 Adet 100x200</li>
            <li>Oda Servisi :	7/24</li>
            <li>Ekstra Yatak :	İsteğe bağlı</li>
            <li>Oda Boyutu :	25 m2</li>
        </ul>
    </div>
    <hr>
    <jsp:include page="odaEki.jsp"/>
    <div id="foot">
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>

