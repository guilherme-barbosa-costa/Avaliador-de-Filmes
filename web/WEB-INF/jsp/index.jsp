<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Barbosa's Filmes</title>
        <%@include file= "./common/head.jsp" %>
    </head>
    <body>
    
    <c:if test="${tipo_usuario != null}">
        <%@ include file="./common/header-logado.jsp" %>
    </c:if>
    <c:if test="${tipo_usuario == null}">
        <%@ include file="./common/header.jsp" %>
    </c:if>

    <main>
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./assets/topgun.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="./assets/outb.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="./assets/batman.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <section class="container my-5">
            <h2 class="text-center mb-4">Primeira Seção</h2>
            <div class="cards-container">
                <!-- Card 1 -->
                <div class="card">
                    <img src="./assets/elementos.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title 1</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- Card 2 -->
                <div class="card">
                    <img src="./assets/elementos.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title 2</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- Card 3 -->
                <div class="card">
                    <img src="./assets/elementos.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title 3</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- Card 4 -->
                <div class="card">
                    <img src="./assets/elementos.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title 4</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </section>

        <section class="container my-5">
            <h2 class="text-center mb-4">Segunda Seção</h2>
            <div class="cards-container">
                <!-- Card 1 -->
                <div class="card">
                    <img src="./assets/elementos.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title 1</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- Card 2 -->
                <div class="card">
                    <img src="./assets/elementos.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title 2</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- Card 3 -->
                <div class="card">
                    <img src="./assets/elementos.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title 3</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                <!-- Card 4 -->
                <div class="card">
                    <img src="./assets/elementos.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title 4</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <%@include file= "./common/script.jsp" %>
</body>
</html>
