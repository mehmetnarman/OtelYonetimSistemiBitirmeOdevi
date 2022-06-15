<%-- 
    Document   : temizlenecekOdalariYenileUyarisi
    Created on : 16.May.2022, 22:58:16
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/uyari.css" rel="stylesheet" type="text/css"/>
    <title>Uyarı</title>
</head>
<body>
<div id="yonlendirme">
    <div id="yazilar">
        <p id="ptag">Temizlenen Oda Bilgileri Sıfırlanacak</p>
        <script>
            setTimeout(ilk, 2000);
            setTimeout(saniye2, 4000);
            setTimeout(yonlendir, 6000);
            function ilk() {
                document.getElementById("ptag").innerHTML = "Güncellemeyi İptal Etmek İçin \"Vazgeç\" Butonuna Basın";
            }
            function saniye2() {
                document.getElementById("ptag").innerHTML = "Güncelleme İşlemi Bittiğinde Ana Sayfaya Yönlendirileceksiniz";
            }
            function yonlendir() {
                window.location = "temizlenecekOdalariYenile.jsp"
            }
        </script>
    </div>
    <a href="anaSayfaTemizlikci.jsp"><button>Vazgeç</button></a>
</div>
</body>
</html>
