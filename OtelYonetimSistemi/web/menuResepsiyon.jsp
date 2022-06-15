<%-- 
    Document   : menuResepsiyon
    Created on : 14.Nis.2022, 22:27:58
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="css/menu.css" rel="stylesheet" type="text/css"/>
<div>
        <div class="conteiner">
            <div class="logo">
                Hoşgeldiniz            
            </div>
            <div class="anasayfa">
                <a href="anaSayfaResepsiyon.jsp">Anasayfa</a>
            </div>
            <div class="dropdown1">
                <button class="dropbtn1">İşlemler</button>
                <div class="dropdown-content1">
                    <a href="standartOda.jsp">Standart Odalar</a>
                    <a href="deluxeOda.jsp">Deluxe Odalar</a>
                    <a href="suitOda.jsp">Suit Odalar</a>
                </div>
            </div>
            <div class="iletisim">
                <a href="iletisim.jsp">İletişim</a>
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

