/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.bean.Filme;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Usuario;

/**
 *
 * @author costa
 */
public class FilmesDAO {

    public boolean cadastrar(Filme filme) {
        boolean cadastrado = false;
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO filme (titulo, diretor, genero, ano_lancamento, sinopse, image) VALUES (?, ?, ?, ?, ?, ?)");
            stmt.setString(1, filme.getTitulo());
            stmt.setString(2, filme.getDiretor());
            stmt.setString(3, filme.getGenero());
            stmt.setInt(4, filme.getAno());
            stmt.setString(5, filme.getSinopse());
            stmt.setString(6, filme.getImagem());
            int linhas = stmt.executeUpdate();
            if (linhas > 0) {
                cadastrado = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return cadastrado;
    }

    public List<Filme> listarFilmes() {
        List<Filme> lista = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM filme");

            rs = stmt.executeQuery();

            while (rs.next()) {
                Filme filme = new Filme();
                filme.setIdFilme(rs.getInt("id"));
                filme.setTitulo(rs.getString("titulo"));
                filme.setDiretor(rs.getString("diretor"));
                filme.setGenero(rs.getString("genero"));
                filme.setSinopse(rs.getString("sinopse"));
                filme.setImagem(rs.getString("image"));
                filme.setAno(rs.getInt("ano_lancamento"));
                lista.add(filme);

                lista.add(filme);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}
