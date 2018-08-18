package br.com.fametro.exception;

public class LivroNaoExisteException extends Exception {

	private static final long serialVersionUID = 1L;
	
	public LivroNaoExisteException() {
		super("Livro Não Encontrado");
	}
}
