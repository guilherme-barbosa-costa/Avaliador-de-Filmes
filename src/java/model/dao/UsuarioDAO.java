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
import java.sql.SQLException;
import model.bean.Usuario;

/**
 *
 * @author costa
 */
public class UsuarioDAO {
    public Usuario logar(String email, String senha) {
        Usuario usuario = null;
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT * FROM usuario WHERE email = ? AND senha = ?");
           
            stmt.setString(1, email);
            stmt.setString(2, senha);
            
           rs = stmt.executeQuery();
            
            if (rs.next()) {
                usuario = new Usuario();
                usuario.setId_usuario(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setRole(rs.getString("role"));
            
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuario;
    }
}

