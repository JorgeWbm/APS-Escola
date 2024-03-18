package com.interfacegrafica.Metodos.Aluno;

import com.interfacegrafica.Metodos.*;

import java.sql.*;

public class AdicionarAluno {

    ConexaoBanco conect = new ConexaoBanco();

    PreparedStatement declaracaoInsert = null;
    Statement declaracao = null;
    ResultSet resultado = null;
    public boolean adicionarAluno(String nome, String dataNasc, String emailAluno, String turma) throws Exception{
        conect.conectar();

        try{
            String insertSQL = "INSERT INTO aluno (nomeAluno, dataNascAluno, emailAluno, TurmaAluno) VALUES (?, STR_TO_DATE(?, '%d/%m/%Y'), ?, ?)";

            declaracaoInsert = conect.conexao.prepareStatement(insertSQL);

            declaracaoInsert.setString(1, nome);
            declaracaoInsert.setString(2, dataNasc);
            declaracaoInsert.setString(3, emailAluno);
            declaracaoInsert.setString(4, turma);

            int executar = declaracaoInsert.executeUpdate();

            return true;
        } catch (Exception e){

            return false;
        }

    }
}