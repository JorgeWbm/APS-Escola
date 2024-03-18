package com.interfacegrafica.Metodos.Professor;

import com.interfacegrafica.Metodos.*;

import java.sql.*;

public class AtualizarDadosProfessor {
	
	ConexaoBanco bd = new ConexaoBanco();
	
	public boolean alterarDados() throws Exception {
		
		Connection con = bd.conectar();
		PreparedStatement declaracaoUpdate = null;
				
		try {
			String updateSQL = "UPDATE professor set nomeProfessor = ?, dataNascProfessor = ?, disciplina = ? where MatriculaProfessor = ?";
			
			
			
			return true;
			
		} catch(Exception e) {
			e.printStackTrace();
			
			return false;
		}
	}
	
}