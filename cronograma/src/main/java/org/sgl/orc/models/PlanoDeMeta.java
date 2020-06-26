package org.sgl.orc.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

/**
 * @author Gleyser
 *
 */
@Entity
public class PlanoDeMeta {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;	
	private String titulo;
	private String ano;
	@Enumerated(EnumType.STRING)
	private tipoEstadoDoPlano estadoDoPlano;
	private int metaMatriculasGratuitas;
	private int metaMatriculasPagas;
	private int metaAlunoHoraGratuitas;
	private int metaAlunoHoraPagas;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private List<Curso> cursosGratuitos;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private List<Curso> cursosPagos;
	
	
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
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public tipoEstadoDoPlano getEstadoDoPlano() {
		return estadoDoPlano;
	}
	public void setEstadoDoPlano(tipoEstadoDoPlano estadoDoPlano) {
		this.estadoDoPlano = estadoDoPlano;
	}
	public int getMetaMatriculasGratuitas() {
		return metaMatriculasGratuitas;
	}
	public void setMetaMatriculasGratuitas(int metaMatriculasGratuitas) {
		this.metaMatriculasGratuitas = metaMatriculasGratuitas;
	}
	public int getMetaMatriculasPagas() {
		return metaMatriculasPagas;
	}
	public void setMetaMatriculasPagas(int metaMatriculasPagas) {
		this.metaMatriculasPagas = metaMatriculasPagas;
	}
	public int getMetaAlunoHoraGratuitas() {
		return metaAlunoHoraGratuitas;
	}
	public void setMetaAlunoHoraGratuitas(int metaAlunoHoraGratuitas) {
		this.metaAlunoHoraGratuitas = metaAlunoHoraGratuitas;
	}
	public int getMetaAlunoHoraPagas() {
		return metaAlunoHoraPagas;
	}
	public void setMetaAlunoHoraPagas(int metaAlunoHoraPagas) {
		this.metaAlunoHoraPagas = metaAlunoHoraPagas;
	}
	public List<Curso> getCursosGratuitos() {
		return cursosGratuitos;
	}
	public void setCursosGratuitos(List<Curso> cursosGratuitos) {
		this.cursosGratuitos = cursosGratuitos;
	}
	public List<Curso> getCursosPagos() {
		return cursosPagos;
	}
	public void setCursosPagos(List<Curso> cursosPagos) {
		this.cursosPagos = cursosPagos;
	}
	
	

}
