<%-- 
    Document   : anaSayfaYonetici
    Created on : 19.Mar.2022, 21:51:53
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malize/1cerss">
        <link href="css/anaSayfa.css" rel="stylesheet" type="text/css"/>
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <link href="css/yoneticiAna.css" rel="stylesheet" type="text/css"/>
        <title>Otel Yönetim Sistemi</title>
    </head>
    <body>
    <div>
        <div class="conteiner">
            <div class="logo">
                Hoşgeldiniz            
            </div>
            <div class="anasayfa">
                <a href="anaSayfaYonetici.jsp">Anasayfa</a>
            </div>
            <div class="dropdown1">
                <button class="dropbtn1">Kullanıcı İşlemleri</button>
                <div class="dropdown-content1">
                    <a href="calisanEkleResepsiyon.jsp">Resepsiyon Ekle</a>
                    <a href="calisanEkleTemizlikci.jsp">Temizlikçi Ekle</a>
                    <a href="calisanEkleVale.jsp">Vale Ekle</a>
                    <a href="kiralamaCikar.jsp">Kiralama Çıkar</a>
                    <a href="calisanCikar.jsp">Çalışan Çıkar</a>
                    <a href="sifreIslemleri.jsp">Şifre İşlemleri</a>
                </div>
            </div>
            <div class="dropdown1">
                <button class="dropbtn1">Fiyat Güncellemeleri</button>
                <div class="dropdown-content1">
                    <a href="odaFiyatlariGuncelle.jsp">Oda Fiyatlarını Güncelle</a>
                    <a href="pansiyonFiyatlariGuncelle.jsp">Pansiyon Fiyatlarını Güncelle</a>
                    <a href="ciroHesapla.jsp">Ciro Hesapla</a>
                </div>
            </div>
            <div class="dropdown2">
                <button class="dropbtn2"><%out.print(session.getAttribute("name"));
                    %>
                    <br>
                    <%
                        out.print("(Yönetici)");
                    %></button>
                <div class="dropdown-content2">
                    <a href="oturumKapat.jsp">Oturumu Kapat</a>
                    <a href="yoneticiSifreDegistir.jsp">Şifre Değiştir</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="hr1">
    <div class="fotograf">
        <img src="image/deniz.jpg" alt="Fotograf" style="width:100%;height:100%;"/>
    </div>
    <%
        int[] odano = new int[18];
        Date bugun = new Date();
        float doluOdaSayisi = 0;
        int gunlukCiro = 0;
        int haftalikCiro = 0;
        int aylikCiro = 0;
        Calendar bugunc = Calendar.getInstance();
        Calendar yarinc = Calendar.getInstance();
        bugunc.setTime(bugun);
        yarinc.setTime(bugun);
        yarinc.add(Calendar.DATE, +1);
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        String bugunFormat = format.format(bugunc.getTime());
        String yarinFormat = format.format(yarinc.getTime());
        Connection con = ConnectionPro.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from otelyonetim.odatarih where tarih between '" + bugunFormat + "' and '" + yarinFormat + "'");
        try {
            int i = 0;
            while (rs.next()) {
                odano[i] = rs.getInt("odaid");
                i++;
            }
            doluOdaSayisi = i;
            st.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Statement gunlukCirost = con.createStatement();
        ResultSet gunlukCirors = gunlukCirost.executeQuery("select * from otelyonetim.user where giris >= '" + bugunFormat + "' and cikis <= '" + yarinFormat + "'");
        try {
            int i = 0;
            while (gunlukCirors.next()) {
                gunlukCiro += gunlukCirors.getInt("odenecektutar");
                i++;
            }
            gunlukCirost.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Calendar gecenhaftac = Calendar.getInstance();
        gecenhaftac.setTime(bugun);
        gecenhaftac.add(Calendar.DATE, -6);
        String gecenHaftaFormat = format.format(gecenhaftac.getTime());
        Statement haftalikCirost = con.createStatement();
        ResultSet haftalikCirors = haftalikCirost.executeQuery("select * from otelyonetim.user where giris >= '" + gecenHaftaFormat + "' and cikis <= '" + yarinFormat + "'");
        try {
            int i = 0;
            while (haftalikCirors.next()) {
                haftalikCiro += haftalikCirors.getInt("odenecektutar");
                i++;
            }
            gunlukCirost.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Calendar gecenayc = Calendar.getInstance();
        gecenayc.setTime(bugun);
        gecenayc.add(Calendar.DATE, -29);
        String gecenayFormat = format.format(gecenayc.getTime());
        Statement aylikCirost = con.createStatement();
        ResultSet aylikCirors = aylikCirost.executeQuery("select * from otelyonetim.user where giris >= '" + gecenayFormat + "' and cikis <= '" + yarinFormat + "'");
        try {
            int i = 0;
            while (aylikCirors.next()) {
                aylikCiro += aylikCirors.getInt("odenecektutar");
                i++;
            }
            gunlukCirost.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        int[] fiyat = new int[19];
        Statement stt = con.createStatement();
        ResultSet rss = stt.executeQuery("select * from otelyonetim.odafiyat");
        try {
            while (rss.next()) {
                fiyat[rss.getInt("oda")] = rss.getInt("fiyat");
            }
            stt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>

    <div class="anaAlan">
        <div class="altAlan">
            <div class="doluluk">
                <p>Otelin Doluluk Oranı</p>
                <%
                    int oran = (int) (((doluOdaSayisi) / 18) * 100);
                %>
                <p><%out.print(oran);%>%</p>
            </div>
            <div class="gunlukCiro">
                <p>Günlük Ciro</p>
                <p><%out.print(gunlukCiro + " TL");%></p>
            </div>
            <div class="gunlukCiro">
                <p>Haftalık Ciro</p>
                <p><%out.print(haftalikCiro + " TL");%></p>
            </div>
            <div class="gunlukCiro">
                <p>Aylık Ciro</p>
                <p><%out.print(aylikCiro + " TL");%></p>
            </div>
        </div>
        <div class="doluOdalar">
            <div id="odalar">
                <p class="baslik">Oda Durumları ve Fiyatları</p>
                <hr class="hr1">
                <p class="baslik">Standart Odaların Durumu</p>
                <%
                    for (int i = 1; i <= 6; i++) {
                        boolean kontrol = false;
                        for (int j = 0; j <= 17; j++) {
                            if (i == odano[j]) {
                                kontrol = true;
                            }
                        }
                        if (kontrol) {
                %>
                <div class="doluoda">
                    <p class="odano"> <%=i%></p>
                    <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                </div>
                <%
                } else {
                %>
                <div class="bosoda">
                    <p class="odano"> <%=i%></p>
                    <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                </div>
                <%
                        }
                    }
                %>
                <p class="baslik">Deluxe Odaların Durumu</p>
                <%
                    for (int i = 7; i <= 12; i++) {
                        boolean kontrol = false;
                        for (int j = 0; j <= 17; j++) {
                            if (i == odano[j]) {
                                kontrol = true;
                            }
                        }
                        if (kontrol) {
                %>
                <div class="doluoda">
                    <p class="odano"> <%=i%></p>
                    <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                </div>
                <%
                } else {
                %>
                <div class="bosoda">
                    <p class="odano"> <%=i%></p>
                    <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                </div>
                <%
                        }
                    }
                %>
                <p class="baslik">Suit Odaların Durumu</p>
                <%
                    for (int i = 13; i <= 18; i++) {
                        boolean kontrol = false;
                        for (int j = 0; j <= 17; j++) {
                            if (i == odano[j]) {
                                kontrol = true;
                            }
                        }
                        if (kontrol) {
                %>
                <div class="doluoda">
                    <p class="odano"> <%=i%></p>
                    <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                </div>
                <%
                } else {
                %>
                <div class="bosoda">
                    <p class="odano"> <%=i%></p>
                    <p>Gecelik Ücret <%=fiyat[i]%> TL</p>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
        </body>
        </html>