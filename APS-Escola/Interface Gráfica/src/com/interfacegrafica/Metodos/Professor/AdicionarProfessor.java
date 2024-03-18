package com.interfacegrafica.Metodos.Professor;

import com.interfacegrafica.Metodos.*;

import java.sql.*;

public class AdicionarProfessor {

    ConexaoBanco conect = new ConexaoBanco();
    public boolean adicionarProfessor(String nome, String dataNasc, String email) throws Exception{

        try{
            String insertSQL = "INSERT INTO professor (nomeProfessor, dataNascProfessor, emailProfessor) VALUES (?, STR_TO_DATE(?, '%d/%m/%Y'), ?)";

            Connection con = conect.conectar();
            PreparedStatement declaracaoProfessor = null;

            declaracaoProfessor = con.prepareStatement(insertSQL);

            declaracaoProfessor.setString(1, nome);
            declaracaoProfessor.setString(2, dataNasc);
            declaracaoProfessor.setString(3, email);

            int executar = declaracaoProfessor.executeUpdate();

            con.close();
            
            return true;
        } catch(Exception e){

            e.printStackTrace();
            System.out.println("Erro professor");
            return false;
        }
    }
}
