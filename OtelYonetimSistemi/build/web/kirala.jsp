<%-- 
    Document   : kirala
    Created on : 14.Nis.2022, 20:33:02
    Author     : Mehmet NARMAN
--%>

<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="yonetim.tarih"%>
<%@page import="yonetim.bilgiler" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/kiralaa.css" rel="stylesheet" type="text/css"/>
    <title>JSP Page</title>
</head>
<body>
    <div>
        <jsp:include page="menuResepsiyon.jsp"/>
    </div>
    <%bilgiler.kiralanacakOda=Integer.parseInt(request.getParameter("kiralanacak"));%>
    <%bilgiler.ekFiyat=Integer.parseInt(request.getParameter("pansiyonTipi"));%>
<div id="kira">
    <div id="yazi">
    <p>Kiralanacak Oda Numarası= <%=bilgiler.kiralanacakOda%></p>
    <p>Giriş Tarihi= <%=tarih.giris%></p>
    <p>Çıkış Tarihi= <%=tarih.cikis%></p>
    <p>Kalacağı Gün Sayısı=</p><%
    String giris=tarih.giris;
    String cikis=tarih.cikis;

    bilgiler.gun=bilgiler.hesapla(giris,cikis);
    
    out.print(bilgiler.gun);
    %>
    <p>Ödenecek Tutar =</p><%
    out.print(bilgiler.tutarhesapla(bilgiler.gun));
    %>
    </div> 
    <form action="kiraKaydet.jsp" method="post">
        <label for="adi">Müşteri Adı Soyadı</label><br>
        <input type="text" id="adi" name="adi" required>
        <label for="tc">Kimlik Numarası</label><br>
        <input type="number" id="tc" name="tc" required>
        <label for="tel">Telefon numarası</label><br>
        <input type="text" id="tel" name="tel" required>
        <label for="plaka">Araç Plakası</label><br>
        <input type="text" id="plaka" name="plaka">
        <input type="submit" value="Kirala ve Kaydet">
    </form>
</div>
</body>
</html>