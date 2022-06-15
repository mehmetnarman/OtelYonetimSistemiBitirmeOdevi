<%-- 
    Document   : suitOda
    Created on : 19 Şub 2022, 18:42:17
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">--%>
        <link href="css/odalar.css" rel="stylesheet" type="text/css"/>
    <title>Suit Odalar</title>
</head>
<body>
    <div>
        <jsp:include page="menu.jsp"/>
    </div>
    <hr>
    <div class="fotograf">
        <img src="image/deniz.jpg" alt="Fotograf" style="width:100%;height:100%;"/>
    </div>
    <div id="basyazi">
    <p id="baslik">
        Suit Oda
    </p>
    <p id="yazi">
        Rahatlığınız için herşey düşünüldü...
    </p>
    </div>
    <div class="odaFotograf">
        <div class="standart">
                <div class="standartYazi">
                    <img src="image/suit1.jpeg" alt="Suit Oda"/>
                </div>
        </div>
        <div class="standart">
                <div class="standartYazi">
                    <img src="image/suit2.jpg" alt="Suit Oda"/>
                    <p>Suit Oda</p>
                </div>
        </div><div class="standart">
                <div class="standartYazi">
                    <img src="image/suit3.jpg" alt="Suit Oda"/>
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
            <li>Çalışma Masası ve Ergonomik Koltuklar</li>
        </ul>
    </div>
    <div id="aciklama">
        <h4>Oda Detayları</h4>
        <ul class="a">
            <li>Yatak :	1 King 180x200</li>
            <li>Oda Servisi :	7/24</li>
            <li>Ekstra Yatak :	İsteğe bağlı</li>
            <li>Oda Boyutu :	55 m2</li>
        </ul>
    </div>
    <hr>
    <jsp:include page="odaEki.jsp"/>
    <div id="foot">
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>