package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.util.Calendar;

public final class ciroHesapla_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link href=\"css/ciroHesapla.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"css/menu.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <title>Otel Yönetim Sistemi</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    <div>\r\n");
      out.write("        <div class=\"conteiner\">\r\n");
      out.write("            <div class=\"logo\">\r\n");
      out.write("                Hoşgeldiniz            \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"anasayfa\">\r\n");
      out.write("                <a href=\"anaSayfaYonetici.jsp\">Anasayfa</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"dropdown1\">\r\n");
      out.write("                <button class=\"dropbtn1\">Kullanıcı İşlemleri</button>\r\n");
      out.write("                <div class=\"dropdown-content1\">\r\n");
      out.write("                    <a href=\"calisanEkleResepsiyon.jsp\">Resepsiyon Ekle</a>\r\n");
      out.write("                    <a href=\"calisanEkleTemizlikci.jsp\">Temizlikçi Ekle</a>\r\n");
      out.write("                    <a href=\"calisanEkleVale.jsp\">Vale Ekle</a>\r\n");
      out.write("                    <a href=\"kiralamaCikar.jsp\">Kiralama Çıkar</a>\r\n");
      out.write("                    <a href=\"calisanCikar.jsp\">Çalışan Çıkar</a>\r\n");
      out.write("                    <a href=\"sifreIslemleri.jsp\">Şifre İşlemleri</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"dropdown1\">\r\n");
      out.write("                <button class=\"dropbtn1\">Fiyat Güncellemeleri</button>\r\n");
      out.write("                <div class=\"dropdown-content1\">\r\n");
      out.write("                    <a href=\"odaFiyatlariGuncelle.jsp\">Oda Fiyatlarını Güncelle</a>\r\n");
      out.write("                    <a href=\"pansiyonFiyatlariGuncelle.jsp\">Pansiyon Fiyatlarını Güncelle</a>\r\n");
      out.write("                    <a href=\"ciroHesapla.jsp\">Ciro Hesapla</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"dropdown2\">\r\n");
      out.write("                <button class=\"dropbtn2\">");
out.print(session.getAttribute("name"));
                    
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    ");

                        out.print("(Yönetici)");
                    
      out.write("</button>\r\n");
      out.write("                <div class=\"dropdown-content2\">\r\n");
      out.write("                    <a href=\"oturumKapat.jsp\">Oturumu Kapat</a>\r\n");
      out.write("                    <a href=\"yoneticiSifreDegistir.jsp\">Şifre Değiştir</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <hr class=\"hr1\">\r\n");
      out.write("    <div class=\"cirotarihleri\">\r\n");
      out.write("        <form name=\"tarih\" action=\"ciroHesaplaDatabase.jsp\" method=\"post\">\r\n");
      out.write("            <div class=\"girisTarihi\">\r\n");
      out.write("                <label for=\"girisTarihi\">Başlangıç Tarihi<label><br>\r\n");
      out.write("                        <input id=\"giris\" type=\"date\" name=\"girisTarihi\" required/>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"cikisTarihi\">\r\n");
      out.write("                            <label for=\"cikisTarihi\">Bitiş Tarihi<label><br>\r\n");
      out.write("                        <input type=\"date\" id=\"cikis\" name=\"cikisTarihi\" required/>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <input type=\"submit\" value=\"Ara\">\r\n");
      out.write("                                        </form>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        \r\n");
      out.write("    <script>\r\n");
      out.write("        var today=new Date();\r\n");
      out.write("        var today1=new Date();\r\n");
      out.write("        var dd = today.getDate();\r\n");
      out.write("        var mm = today.getMonth() + 1; //January is 0!\r\n");
      out.write("        var yyyy = today.getFullYear();\r\n");
      out.write("\r\n");
      out.write("        if (dd < 10) {\r\n");
      out.write("           dd = '0' + dd;\r\n");
      out.write("        }\r\n");
      out.write("        if (mm < 10) {\r\n");
      out.write("           mm = '0' + mm;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        today = yyyy + '-' + mm + '-' + dd;\r\n");
      out.write("        document.getElementById('giris').setAttribute(\"value\", today);\r\n");
      out.write("        document.getElementById('giris').setAttribute(\"max\", today);\r\n");
      out.write("        document.getElementById('cikis').setAttribute(\"value\", today);\r\n");
      out.write("        document.getElementById('cikis').setAttribute(\"max\", today);\r\n");
      out.write("    </script>\r\n");
      out.write("    </body>\r\n");
      out.write("    </html>\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
