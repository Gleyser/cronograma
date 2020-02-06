package org.sgl.orc.models;

public class Laboratorio {
	private String nome;
	private String capacidade;
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCapacidade() {
		return capacidade;
	}
	public void setCapacidade(String capacidade) {
		this.capacidade = capacidade;
	}
	@Override
	public String toString() {
		return "Laboratorio [nome=" + nome + ", capacidade=" + capacidade + "]";
	}
	
	

}
