package com.interfacegrafica.Metodos;

import java.sql.*;

public class ConexaoBanco {
	
	public Connection conexao = null;
	Statement declaracao = null;
	PreparedStatement declaracaoPronta = null;
	ResultSet resultado = null;
	
	public Connection conectar() throws Exception{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/apsescola", "root", "");
			
			declaracao = conexao.createStatement();
		} catch(Exception e) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conexao = DriverManager.getConnection("jdbc:mysql://localhost:3307/apsescola", "root", "");
			
			declaracao = conexao.createStatement();
		}
			return conexao;
	}
}