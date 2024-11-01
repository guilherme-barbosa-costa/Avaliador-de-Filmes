/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.bean.Filme;
import model.bean.Usuario;
import model.dao.FilmesDAO;
import model.dao.UsuarioDAO;

/**
 *
 * @author costa
 */
@WebServlet(name = "FilmesController", urlPatterns = {"/FilmesController", "/home", "/lancamentos", "/login", "/logar", "/cadastrar", "/cadastrar-filme"})
@MultipartConfig
public class FilmesController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FilmesController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FilmesController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getServletPath();

        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie c : cookies) {
                if (url.equals("/login")) {
                    c.setValue("");
                    c.setMaxAge(0);

                    response.addCookie(c);
                } else {
                    request.setAttribute(c.getName(), c.getValue());
                }
            }
        }

        if (url.equals("/home")) {

            request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
        } else if (url.equals("/lancamentos")) {

            request.getRequestDispatcher("/WEB-INF/jsp/lancamentos.jsp").forward(request, response);
        } else if (url.equals("/login")) {

            request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
        } else if (url.equals("/cadastrar")) {

            request.getRequestDispatcher("/WEB-INF/jsp/cadastrar-filme.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getServletPath();

        if (url.equals("/logar")) {
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            Usuario usuarioLogado = new UsuarioDAO().logar(email, senha);

            if (usuarioLogado.getId_usuario() > 0) {
                Cookie cId = new Cookie("id_usuario", Integer.toString(usuarioLogado.getId_usuario()));
                Cookie nome = new Cookie("nome_usuario", usuarioLogado.getNome());
                Cookie role = new Cookie("tipo_usuario", usuarioLogado.getRole());

                response.addCookie(cId);
                response.addCookie(nome);
                response.addCookie(role);

                response.sendRedirect("./home");
            } else {
                response.sendRedirect("./login");
            }
        } else if (url.equals("/cadastrar-filme")) {
            Filme filme = new Filme();
            filme.setTitulo(request.getParameter("titulo"));
            filme.setDiretor(request.getParameter("diretor"));
            filme.setGenero(request.getParameter("genero"));
            filme.setSinopse(request.getParameter("sinopse"));
            filme.setAno(Integer.parseInt(request.getParameter("ano_lancamento")));
            Part imagem = request.getPart("imagem");

            InputStream imageContent = imagem.getInputStream();
            byte[] buffer = new byte[8192];
            int bytesRead;
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            while ((bytesRead = imageContent.read(buffer)) != -1) {
                output.write(buffer, 0, bytesRead);
            }
            byte[] imageBytes = output.toByteArray();
           // filme.setImagem(Base64.getEncoder().encodeToString(imageBytes));

            boolean cadastrou = new FilmesDAO().cadastrar(filme);
            if (cadastrou) {
                response.sendRedirect("./home");
            } else {
                response.sendRedirect("./cadastrar");
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
