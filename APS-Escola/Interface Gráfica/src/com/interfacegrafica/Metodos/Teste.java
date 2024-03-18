package com.interfacegrafica.Metodos;

import com.interfacegrafica.Metodos.Aluno.*;
import com.interfacegrafica.Metodos.Disciplinas.*;
import com.interfacegrafica.Metodos.Professor.*;

public class Teste {

	public static void main(String[] args) throws Exception {
		AdicionarAluno add = new AdicionarAluno();

		AdicionarDisciplina addDisc = new AdicionarDisciplina();

		AdicionarProfessor addProf = new AdicionarProfessor();
		
		if(add.adicionarAluno("Marco", "11/09/2003", "a@c.com", "1A")) {
			System.out.println("Cadastrado aluno");
		} else {
			System.out.println("Erro cadastrar aluno");
		}

		if(addProf.adicionarProfessor("Aa", "01/01/01", "b@b.com")){
			System.out.println("Cadastrado professor");
		} else {
			System.out.println("Erro cadastrar professor");
		}
		
		if (addDisc.adicionarDisciplina("ARQUIRTETURA DE COMPUTADORES", "202301")) {
			System.out.println("Cadastrado disciplina");
		} else {
			System.out.println("Erro cadastrar disciplina");
		}

	}

}