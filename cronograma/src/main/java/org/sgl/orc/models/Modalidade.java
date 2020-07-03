package org.sgl.orc.models;


import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.sgl.orc.models.tipos.tipoDeEp;


@Entity
public class Modalidade {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;	
	private String titulo;
	@Enumerated(EnumType.STRING)
	private tipoDeEp tipoDePagamento;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public tipoDeEp getTipoDePagamento() {
		return tipoDePagamento;
	}
	public void setTipoDePagamento(tipoDeEp tipoDePagamento) {
		this.tipoDePagamento = tipoDePagamento;
	}
	
	

}
