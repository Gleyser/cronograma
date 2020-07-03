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

import org.sgl.orc.models.tipos.tipoDiaDaSemana;
import org.sgl.orc.models.tipos.tipoModalidade;
import org.sgl.orc.models.tipos.tipoSetor;
import org.sgl.orc.models.tipos.tipoTurno;
import org.sgl.orc.models.tipos.tipoUnidade;

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
	private int semestre;
	private int trimestre;
	private Calendar dataInicio;
	private Calendar datafinal;
	private String codSGE;
	@Enumerated(EnumType.STRING)
	private tipoTurno turno;
	@Enumerated(EnumType.STRING)
	private tipoSetor setor;
	@ElementCollection(fetch = FetchType.EAGER)
	private List<tipoDiaDaSemana> diasDeAula;
	@OneToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private List<UnidadeCurricular> disciplinas;
	// Se for true, eh um modelo e servirá pra ser copiado para criar cursos iguais
	@Column(name = "ehModelo", nullable = false)
	private boolean ehModelo;
	private int cargaHorariaTotal;
	private int cargaHorariaRealizada;
	private int numAlunos;
	// Se for true, eh um modelo e servirá pra ser copiado para criar cursos iguais
	@Column(name = "ehResidual", nullable = false)
	private boolean ehResidual;
	@Enumerated(EnumType.STRING)
	private tipoUnidade unidade;
	
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
	
	public int getTrimestre() {
		return trimestre;
	}
	public void setTrimestre(int trimestre) {
		this.trimestre = trimestre;
	}
	public int getCargaHorariaRealizada() {
		return cargaHorariaRealizada;
	}
	public void setCargaHorariaRealizada(int cargaHorariaRealizada) {
		this.cargaHorariaRealizada = cargaHorariaRealizada;
	}
	public boolean isEhResidual() {
		return ehResidual;
	}
	public void setEhResidual(boolean ehResidual) {
		this.ehResidual = ehResidual;
	}
	public void tornaResidual() {
		this.ehResidual = true;
	}
	public int getSemestre() {
		return semestre;
	}
	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}
	public tipoUnidade getUnidade() {
		return unidade;
	}
	public void setUnidade(tipoUnidade unidade) {
		this.unidade = unidade;
	}
	
	
		

}
