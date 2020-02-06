package org.sgl.orc.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Laboratorio {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
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
