<%-- 
    Document   : iletisimResepsiyon
    Created on : 01.Haz.2022, 10:07:51
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/menu.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">
        <link href="css/iletisim.css" rel="stylesheet" type="text/css"/>
        <title>İletişim</title>
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
    <section class="alan">
        <div>
            <p>
                Adres: Sivas
            </p>
            <p>Telefon: 0(555)555 55 55</p>
            <p>e-posta: yonetim@gmail.com</p>


        </div>
        <hr class="hr1">
    </section>
    <div id="foot">
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>

