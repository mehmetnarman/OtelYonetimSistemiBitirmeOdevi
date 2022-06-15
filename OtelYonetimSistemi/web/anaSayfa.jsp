<%-- 
    Document   : anaSayfa
    Created on : 09.Şub.2022, 14:41:23
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">
        <link href="css/anaSayfa.css" rel="stylesheet" type="text/css"/>
        <title>Otel Yönetim Sistemi</title>
    </head>
<body>
    <div>
        <jsp:include page="menu.jsp"/>
    </div>
    <hr class="hr1">
    <div class="fotograf">
        <img src="image/deniz.jpg" alt="Fotograf" style="width:100%;height:100%;"/>
    </div>
    <div class="tarihler">
        <h4>Bilgilendirme Sayfasına Hoş Geldiniz</h4><br>
        <h5>Hizmetlere göz atmak için aşağıda bulunan oda linklerine tıklayabilirsiniz.</h5>
    </div>
    <div class="odaFotograf">
        <div class="standart">
            <a href="standartOda.jsp">
                <div class="standartYazi">
                    <img src="image/standart1.jpeg" alt="Standart Oda"/>
                    <p>Standart Oda</p>
                </div>
            </a>
        </div>
        <div class="standart">
            <a href="deluxeOda.jsp">
                <div class="standartYazi">
                    <img src="image/deluxe1.jpeg" alt="Deluxe Oda"/>
                    <p>Deluxe Oda</p>
                </div>
            </a>   
        </div><div class="standart">
            <a href="suitOda.jsp">
                <div class="standartYazi">
                    <img src="image/suit1.jpeg" alt="Suit Oda"/>
                    <p>Suit Oda</p>
                </div>
            </a>
        </div>
    </div>
    <div id="foot">
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>
