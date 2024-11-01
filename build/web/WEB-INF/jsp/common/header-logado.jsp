<%-- 
    Document   : header-logado
    Created on : 29/10/2024, 22:05:23
    Author     : costa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header_logado">
    <nav>
        <ul>
            <li><i class="fa-solid fa-house"></i>Inicio</li>
            <li><a href="./lancamentos"><i class="fa-solid fa-film"></i>Lançamentos</a></li>
            <li><i class="fa-solid fa-magnifying-glass"></i>Buscar</li>  
            <c:if test='${tipo_usuario == "ADMIN"}'>
                <a href="./cadastrar">
                    <li>Cadastrar Filme</li>
                </a>
            </c:if>
        </ul>
    </nav>
    <div class="container_bemvindo">
        <nav>
            <span>Bem Vindo> ${nome_usuario}</span>
            <a href="./login">
                <button type="submit" class="btn btn-warning">Sair</button>
            </a>

        </nav>
    </div>

</header>