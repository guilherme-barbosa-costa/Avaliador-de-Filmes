

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="./common/head.jsp" %>         
        <title> Cadastrar Filme </title>
    </head>
    <body>
        <%@include file="./common/header-logado.jsp" %>
        <main>
            <form action="cadastrar-filme" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Título</label>
                    <input type="text" name="titulo" class="form-control" id="titulo" placeholder="titulo">
                </div>
                <div class="mb-3">
                    <label for="Diretor" class="form-label">Diretor</label>
                    <input type="text" name="diretor" class="form-control" id="diretor" placeholder="Diretor">
                </div>
                <div class="mb-3">
                    <label for="Genero" class="form-label">Gênero</label>
                    <input type="text" name="genero" class="form-control" id="genero" placeholder="Genero">
                </div>
                <div class="mb-3">
                    <label for="ano_lancamento" class="form-label">Ano de Lançamento</label>
                    <input type="number" name="ano_lancamento" class="form-control" id="ano_lancamento" placeholder="ano_lancamento">
                </div>
                <div class="mb-3">
                    <label for="Sinopse" class="form-label">Sinopse</label>
                    <input type="text" name="sinopse" class="form-control" id="sinopse" placeholder="Sinopse">
                </div>
                <div class="mb-3">
                    <label for="imagem" class="form-label">Insira o Poster</label>
                    <input type="file" name="imagem" class="form-control" id="imagem" placeholder="imagem">
                </div>
                <button type="submit" class="btn btn-success">Enviar</button>
            </form>
        </main>
        <%@include file="./common/script.jsp" %>
    </body>
</html>
