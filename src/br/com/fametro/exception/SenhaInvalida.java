package br.com.fametro.exception;

public class SenhaInvalida extends Exception {

	private static final long serialVersionUID = 1L;

	public SenhaInvalida() {
		super("A senha não confere");
	}
}
