package org.sgl.orc.models;

import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 * @author Gleyser
 *
 */
@Entity
public class Curso {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;	
	private String nome;
	@Enumerated(EnumType.STRING)
	private tipoModalidade modalidade;
	private String ano;
	@Enumerated(EnumType.STRING)
	private tipoSemestre semestre;
	private Calendar dataInicio;
	private Calendar datafinal;
	private String codSGE;
	@Enumerated(EnumType.STRING)
	private tipoTurno turno;
	@Enumerated(EnumType.STRING)
	private tipoSetor setor;
	@ElementCollection(fetch = FetchType.EAGER)
	private List<tipoDiaDaSemana> diasDeAula;
	@OneToMany(cascade = CascadeType.ALL)
	private List<UnidadeCurricular> disciplinas;
	// Se for true, eh um modelo e servirá pra ser copiado para criar cursos iguais
	@Column(name = "ehModelo", nullable = false)
	private boolean ehModelo;
	private int cargaHorariaTotal;
	private int numAlunos;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public tipoModalidade getModalidade() {
		return modalidade;
	}
	public void setModalidade(tipoModalidade modalidade) {
		this.modalidade = modalidade;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public tipoSemestre getSemestre() {
		return semestre;
	}
	public void setSemestre(tipoSemestre semestre) {
		this.semestre = semestre;
	}
	public Calendar getDataInicio() {
		return dataInicio;
	}
	public void setDataInicio(Calendar dataInicio) {
		this.dataInicio = dataInicio;
	}
	public Calendar getDatafinal() {
		return datafinal;
	}
	public void setDatafinal(Calendar datafinal) {
		this.datafinal = datafinal;
	}
	public String getCodSGE() {
		return codSGE;
	}
	public void setCodSGE(String codSGE) {
		this.codSGE = codSGE;
	}
	public tipoTurno getTurno() {
		return turno;
	}
	public void setTurno(tipoTurno turno) {
		this.turno = turno;
	}
	public tipoSetor getSetor() {
		return setor;
	}
	public void setSetor(tipoSetor setor) {
		this.setor = setor;
	}
	public List<tipoDiaDaSemana> getDiasDeAula() {
		return diasDeAula;
	}
	public void setDiasDeAula(List<tipoDiaDaSemana> diasDeAula) {
		this.diasDeAula = diasDeAula;
	}
	public List<UnidadeCurricular> getDisciplinas() {
		return disciplinas;
	}
	public void setDisciplinas(List<UnidadeCurricular> disciplinas) {
		this.disciplinas = disciplinas;
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
	public int getCargaHorariaTotal() {
		return cargaHorariaTotal;
	}
	public void setCargaHorariaTotal(int cargaHorariaTotal) {
		this.cargaHorariaTotal = cargaHorariaTotal;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumAlunos() {
		return numAlunos;
	}
	public void setNumAlunos(int numAlunos) {
		this.numAlunos = numAlunos;
	}
	
	public void addDisciplina(UnidadeCurricular uc) {
		this.disciplinas.add(uc);
	}
	
	public void removeDisciplina(UnidadeCurricular uc) {
		// to do
	}
	
	
	
	
	
	

}
