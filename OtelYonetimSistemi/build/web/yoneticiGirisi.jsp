<%-- 
    Document   : kullaniciLogin
    Created on : 11 Şub 2022, 23:31:41
    Author     : Mehmet NARMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
    <title>Yönetici Girişi</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <%@page import="java.sql.*,java.util.*"%>
<section class="login">
    <div class="card z-depth-3">
        <div class="card-panel center grey accent-2">
            <span class="card-title">Yönetici Girişi</span>
        </div>
        <form class="form" action="yoneticiLogin.jsp" method="post"> 
            <div class="input-field"><br></br>
                <input type="email" placeholder="Email" class="validate" name="email" required>
            </div>
            <div class="input-field"><br></br>
                <input type="password" placeholder="Şifre" class="validate" name="password" required>
            </div>
            <div class="center">
                <button type="submit" class="btn-large grey accent-2">
                    Giriş
                </button>
            </div>
        </form>
    </div>
</section>
    <jsp:include page="footer.jsp"/>
</body>
</html>
