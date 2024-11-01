<%-- 
    Document   : avaliador
    Created on : 29/10/2024, 19:05:07
    Author     : costa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="./assets/logo.png" rel="shortcut icon">
        <style>
            /* Estilos de centralização e cores */
            body {
                background-color: #1C1C1C; /* Fundo escuro que remete a cinemas */
                font-family: Arial, sans-serif;
                color: #FFD700; /* Dourado, cor clássica de cinema */
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .container {
                text-align: center;
                background-color: #2C2C2C;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.7);
                width: 80%;
                max-width: 500px;
            }

            h1 {
                color: #FFD700; /* Dourado para o título */
                font-size: 2em;
                margin-bottom: 20px;
            }

            label {
                color: #FFD700;
                font-weight: bold;
            }

            input[type="text"],
            select,
            textarea {
                width: 100%;
                padding: 10px;
                margin-top: 10px;
                margin-bottom: 20px;
                border: none;
                border-radius: 5px;
                background-color: #3A3A3A;
                color: #FFF;
            }

            button {
                background-color: #B22222; /* Vermelho clássico de cinema */
                color: #FFD700;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                font-size: 1em;
                cursor: pointer;
                transition: background-color 0.3s;
            }

            button:hover {
                background-color: #8B0000; /* Tom mais escuro no hover */
            }
        </style>
    </head>
   <body>
        <div class="container">
            <h1>Avaliação de Filmes</h1>
            <form action="submitRating" method="post">
                <label for="movieName">Nome do Filme:</label>
                <input type="text" id="movieName" name="movieName" required><br><br>

                <label for="rating">Nota (1 a 5):</label>
                <select id="rating" name="rating" required>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select><br><br>

                <label for="review">Comentário:</label><br>
                <textarea id="review" name="review" rows="4" cols="50" placeholder="Escreva seu comentário aqui..."></textarea><br><br>

                <button type="submit">Enviar Avaliação</button>
            </form>
        </div>
    </body>
</html>
