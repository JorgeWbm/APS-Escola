package com.interfacegrafica.Metodos.Disciplinas;

import com.interfacegrafica.Metodos.*;

import java.sql.*;

public class AdicionarDisciplina {

    public boolean adicionarDisciplina(String nomeDisciplina, String professor) throws Exception{
        ConexaoBanco conect = new ConexaoBanco();
        
        Connection con = conect.conectar();
        PreparedStatement declaracaoInsert = null;

        try{
            String insertSQL = "INSERT INTO disciplinas (nomeDisciplina, matriculaProfessor) VALUES (?, ?)";

            declaracaoInsert = con.prepareStatement(insertSQL);

            declaracaoInsert.setString(1, nomeDisciplina);
            declaracaoInsert.setString(2, professor);

            int executar = declaracaoInsert.executeUpdate();

            return true;
        } catch (Exception e){
        	
        	e.printStackTrace();
        	
        	System.out.println("Erro disciplina");
            return false;
        }

    }
}