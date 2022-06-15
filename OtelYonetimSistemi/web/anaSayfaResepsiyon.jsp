<%-- 
    Document   : anaSayfaCalisan
    Created on : 19.Mar.2022, 21:52:12
    Author     : Mehmet NARMAN
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">
        <link href="css/anaSayfa.css" rel="stylesheet" type="text/css"/>
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
    <hr class="hr1">
    <div class="fotograf">
        <img src="image/deniz.jpg" alt="Fotograf" style="width:100%;height:100%;"/>
    </div>
    <%
    Date now=new Date();
    Calendar c=Calendar.getInstance();
    c.setTime(now);
    %>
    <div class="tarihler">
        <form name="tarih" action="bosOdalar.jsp" method="post">
            <div class="girisTarihi">
                <label for="girisTarihi">Giriş Tarihi<label><br>
                        <input id="giris" type="date" name="girisTarihi" required/>
                        </div>
                        <div class="cikisTarihi">
                            <label for="cikisTarihi">Çıkış Tarihi<label><br>
                        <input type="date" id="cikis" name="cikisTarihi" required/>
                                    </div>
                                    <input type="submit" value="Ara">
                                        </form>
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
    <script>
        var today=new Date();
        var today1=new Date();
        var dd = today.getDate();
        var dd1 = today.getDate()+1;
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();

        if (dd < 10) {
           dd = '0' + dd;
        }

        if (dd1 < 10) {
           dd = '0' + dd;
        }
        if (mm < 10) {
           mm = '0' + mm;
        }

        today = yyyy + '-' + mm + '-' + dd;
        today1 = yyyy + '-' + mm + '-' + dd1;
        document.getElementById('giris').setAttribute("value", today);
        document.getElementById('giris').setAttribute("min", today);
        document.getElementById('cikis').setAttribute("value", today1);
        document.getElementById('cikis').setAttribute("min", today1);
    </script>
    <div id="foot">
        <jsp:include page="footer.jsp"/>
    </div>
    </body>
    </html>
