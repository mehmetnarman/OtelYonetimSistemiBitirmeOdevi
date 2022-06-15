<%-- 
    Document   : temizlenecekOdalarıYenile
    Created on : 22.Nis.2022, 00:34:38
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="yonetim.tarih"%>
<%@page import="yonetim.bilgiler"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/yanlisGiris.css" rel="stylesheet" type="text/css"/>
    <title>JSP Page</title>
</head>
<body>
<div>
    <jsp:include page="menuResepsiyon.jsp"/>
</div>
<%
    Date dgiris = new SimpleDateFormat("yyyy-MM-dd").parse(tarih.giris);
    Date dcikis = new SimpleDateFormat("yyyy-MM-dd").parse(tarih.cikis);

    Calendar giris = Calendar.getInstance();
    Calendar cikis = Calendar.getInstance();
    giris.setTime(dgiris);
    cikis.setTime(dcikis);

    boolean kontrol = true;
    Connection con = ConnectionPro.getConnection();
    while (kontrol) {
        if (giris.compareTo(cikis) < 0) {
            try {
                Statement st = con.createStatement();
                SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
                String tarih = format.format(giris.getTime());
                int j = st.executeUpdate("insert into odatarih(odaid,tarih)values('" + bilgiler.kiralanacakOda + "','" + tarih + "')");
                giris.add(Calendar.DATE, 1);
            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
        } else {
            kontrol = false;
        }
    }

    String adi = request.getParameter("adi");
    String tc = request.getParameter("tc");
    String telefon = request.getParameter("tel");
    String plaka = request.getParameter("plaka");
    try {
        Statement st = con.createStatement();
        int i = st.executeUpdate("insert into user(name,tc,telefon,plaka,odano,giris,cikis,odenecektutar)values('" + adi + "','" + tc + "','" + telefon + "','" + plaka + "','" + bilgiler.kiralanacakOda + "','" + tarih.giris + "','" + tarih.cikis + "','" + bilgiler.tutar + "')");
    } catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }%>
<div id="yonlendirme">
    <p id="ptag">Oda Kiralama İşlemi Tamamlandı</p>
    <script>
        setTimeout(ilk, 2000);
        setTimeout(saniye3, 3000);
        setTimeout(saniye2, 4000);
        setTimeout(saniye1, 5000);
        setTimeout(yonlendir, 6000);
        function ilk() {
            document.getElementById("ptag").innerHTML = "Ana Sayfaya Yönlendiriliyorsunuz";
        }
        function saniye3() {
            document.getElementById("ptag").innerHTML = "3";
        }
        function saniye2() {
            document.getElementById("ptag").innerHTML = "2";
        }
        function saniye1() {
            document.getElementById("ptag").innerHTML = "1";
        }
        function yonlendir() {
            window.location = "anaSayfaResepsiyon.jsp";
        }
    </script>
</div>
</body>
</html>