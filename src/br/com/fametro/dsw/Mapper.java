package br.com.fametro.dsw;

import java.util.ArrayList;
import java.util.List;

import br.com.fametro.exception.LivroNaoExisteException;
import br.com.fametro.exception.SenhaInvalida;

public class Mapper {
	private List<Livros> livros = new ArrayList<Livros>();
	private static List<User> usuarios = new ArrayList<User>();

	public Mapper() {
		Livros ganesh = new Livros();
		ganesh.setISBN(515251);
		ganesh.setAutor("S.G. Ganesh");
		ganesh.setTítulo("Oracle Certified Profissional Java SE 7 Programmer Exams");

		Livros smit = new Livros();
		smit.setISBN(56447);
		smit.setAutor("Jan Smit");
		smit.setTítulo("GIMP for Absolute Beginners");

		livros.add(ganesh);
		livros.add(smit);
	}

	public void adiciona(User user) {
		user.setId(usuarios.size());
		usuarios.add(user);
	}

	public User vericaLogin(String nome, String senha) throws SenhaInvalida {
		for (User it : usuarios) {
			if (nome.equals(it.getNome())) {
				if (senha.equals(it.getSenha())) {
					return usuarios.get(it.getId());
				}
			}
		}

		throw new SenhaInvalida();

	}

	public Livros searchBookByKeyword(String KeyWord)
			throws LivroNaoExisteException {
		for (Livros it : livros) {
			if (it.getTítulo().contains(KeyWord)) {
				return livros.get(livros.lastIndexOf(it));
			}
		}
		throw new LivroNaoExisteException();
	}
}
