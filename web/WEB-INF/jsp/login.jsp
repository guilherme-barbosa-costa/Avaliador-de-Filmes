<%-- 
    Document   : login
    Created on : 29/10/2024, 19:44:41
    Author     : costa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="./common/head.jsp" %>
        <link rel="stylesheet" href="./styles/login.css"  
    </head>
    <body>
        <form method="post" action="./logar">  
            <div class="form_header">
                <a href="./home">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5z"/>
                      </svg>
                </a>       
            </div>
                
            <div class="mb-3">
                <label for="exampleInputEmail1"  class="form-label">Email</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Senha</label>
                <input type="password" name="senha" class="form-control" id="exampleInputPassword1">
            </div>
            <button type="submit" class="btn btn-primary">Entrar</button>
        </form>
        <%@ include file="./common/script.jsp" %>
    </body>
</html>
