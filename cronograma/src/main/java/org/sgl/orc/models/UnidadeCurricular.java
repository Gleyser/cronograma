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
	@Enumerated(EnumType.STRING)
	private tipoSetor setor;
	
	
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
		
	public tipoSetor getSetor() {
		return setor;
	}
	public void setSetor(tipoSetor setor) {
		this.setor = setor;
	}
	@Override
	public String toString() {
		return "UnidadeCurricular [id=" + id + ", professor=" + professor + ", nome=" + nome + ", modulo=" + modulo
				+ ", sala=" + sala + ", observacoes=" + observacoes + ", node=" + node + ", cargaHoraria="
				+ cargaHoraria + ", numAvaliacoes=" + numAvaliacoes + ", dataInicio=" + dataInicio + ", aulaInicial="
				+ aulaInicial + ", dataFinal=" + dataFinal + ", aulaFinal=" + aulaFinal + ", ehModelo=" + ehModelo
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + aulaFinal;
		result = prime * result + aulaInicial;
		result = prime * result + cargaHoraria;
		result = prime * result + ((dataFinal == null) ? 0 : dataFinal.hashCode());
		result = prime * result + ((dataInicio == null) ? 0 : dataInicio.hashCode());
		result = prime * result + (ehModelo ? 1231 : 1237);
		result = prime * result + id;
		result = prime * result + ((modulo == null) ? 0 : modulo.hashCode());
		result = prime * result + node;
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + numAvaliacoes;
		result = prime * result + ((observacoes == null) ? 0 : observacoes.hashCode());
		result = prime * result + ((professor == null) ? 0 : professor.hashCode());
		result = prime * result + ((sala == null) ? 0 : sala.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UnidadeCurricular other = (UnidadeCurricular) obj;
		if (id != other.id)
			return false;
		
		return true;
	}
	
	
	
	
	

}
