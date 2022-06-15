<%-- 
    Document   : yoneticiLogin
    Created on : 16.Mar.2022, 15:08:17
    Author     : Mehmet NARMAN
--%>

<%@page import="yonetim.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
    <link href="css/yanlisGiris.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String user = request.getParameter("email");
            String password = request.getParameter("password");
            Connection con = ConnectionPro.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from admin where email='" + user + "' and password='" + password + "'");
            try {
                if (rs.next() == false) {
                    %>
                    <div id="yonlendirme">
                        <p id="ptag">Kullanıcı Adı veya Şifre Yanlış</p>
                        <p id="ptag1"></p>
                        <script>
                            setTimeout(ilk,2000);  
                            setTimeout(saniye3,3000); 
                            setTimeout(saniye2,4000);
                            setTimeout(saniye1,5000);
                            setTimeout(yonlendir,6000);
                            function ilk(){
                                document.getElementById("ptag").innerHTML="Tekrar Denemek İçin Yönlendiriliyorsunuz";
                                document.getElementById("ptag1").innerHTML="4"
                            }
                            function saniye3(){
                                document.getElementById("ptag1").innerHTML="3";
                            }
                            function saniye2(){
                                document.getElementById("ptag1").innerHTML="2";
                            }
                            function saniye1(){
                                document.getElementById("ptag1").innerHTML="1";
                            }
                            function yonlendir(){
                                window.location="yoneticiGirisi.jsp"
                            }
                        </script>
                    </div>           
                    <%
                }
                if (rs.getString("password").equals(password) && rs.getString("email").equals(user)) {
                    session.setAttribute("name", rs.getString("name"));
                    response.sendRedirect("anaSayfaYonetici.jsp");
                }
                rs.next();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>