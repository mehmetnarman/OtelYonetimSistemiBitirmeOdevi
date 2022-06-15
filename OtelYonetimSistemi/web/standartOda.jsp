<%-- 
    Document   : standartOda
    Created on : 15 Şub 2022, 15:58:39
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">--%>
        <link href="css/odalar.css" rel="stylesheet" type="text/css"/>
    <title>Standart Odalar</title>
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
        Standart Tek Kişilik Oda
    </p>
    <p id="yazi">
        Çağdaş bir dekora ve zarif dokunuşlara sahip olan Standart Tek kişilik oda, Otel konuklarına,kral çift kişilik yatakları sunmaktadır.
    </p>
    </div>
    <div class="odaFotograf">
        <div class="standart">
                <div class="standartYazi">
                    <img src="image/standart1.jpeg" alt="Standart Oda"/>
                </div>
        </div>
        <div class="standart">
                <div class="standartYazi">
                    <img src="image/standart2.jpeg" alt="Deluxe Oda"/>
                    <p>Standart Oda</p>
                </div>
        </div><div class="standart">
                <div class="standartYazi">
                    <img src="image/standart3.jpeg" alt="Suit Oda"/>
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
            <li>Yatak :	1 King 160x200</li>
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
