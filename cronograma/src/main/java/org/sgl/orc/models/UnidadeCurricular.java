package org.sgl.orc.models;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OrderBy;

/**
 * @author Gleyser
 *
 */
/**
 * @author Gleyser
 *
 */
@Entity
public class UnidadeCurricular {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;	
	@ManyToOne
	private Usuario professor;
	@OrderBy ("nome ASC")
	private String nome;
	@Enumerated(EnumType.STRING)
	private tipoModulo modulo;
	private String sala;
	private String observacoes;
	private int node;
	private int cargaHoraria;
	private int numAvaliacoes;
	private Calendar dataInicio;
	private int aulaInicial;
	private Calendar dataFinal;
	private int aulaFinal;
	// Se for true, eh um modelo e servirá pra ser copiado para criar cursos iguais
	@Column(name = "ehModelo", nullable = false)
	private boolean ehModelo;
	
	
	public Usuario getProfessor() {
		return professor;
	}
	public void setProfessor(Usuario professor) {
		this.professor = professor;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
		
	public tipoModulo getModulo() {
		return modulo;
	}
	public void setModulo(tipoModulo modulo) {
		this.modulo = modulo;
	}
	public String getSala() {
		return sala;
	}
	public void setSala(String sala) {
		this.sala = sala;
	}
	public String getObservacoes() {
		return observacoes;
	}
	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}
	public int getNode() {
		return node;
	}
	public void setNode(int node) {
		this.node = node;
	}
	public int getCargaHoraria() {
		return cargaHoraria;
	}
	public void setCargaHoraria(int cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}
	public int getNumAvaliacoes() {
		return numAvaliacoes;
	}
	public void setNumAvaliacoes(int numAvaliacoes) {
		this.numAvaliacoes = numAvaliacoes;
	}
	public Calendar getDataInicio() {
		return dataInicio;
	}
	public void setDataInicio(Calendar dataInicio) {
		this.dataInicio = dataInicio;
	}
	public int getAulaInicial() {
		return aulaInicial;
	}
	public void setAulaInicial(int aulaInicial) {
		this.aulaInicial = aulaInicial;
	}
	public Calendar getDataFinal() {
		return dataFinal;
	}
	public void setDataFinal(Calendar dataFinal) {
		this.dataFinal = dataFinal;
	}
	public int getAulaFinal() {
		return aulaFinal;
	}
	public void setAulaFinal(int aulaFinal) {
		this.aulaFinal = aulaFinal;
	}
	public boolean isEhModelo() {
		return ehModelo;
	}
	public void setEhModelo(boolean ehModelo) {
		this.ehModelo = ehModelo;
	}
	
	public void transformeEmModelo() {
		this.ehModelo = true;
	}
	
	public void removaModelo() {
		this.ehModelo = false;
	}
	
	
	
	
	

}
