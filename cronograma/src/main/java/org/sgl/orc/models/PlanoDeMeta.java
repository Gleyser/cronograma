package org.sgl.orc.models;

import java.util.ArrayList;
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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.sgl.orc.models.tipos.tipoDeEp;
import org.sgl.orc.models.tipos.tipoEstadoDoPlano;
import org.sgl.orc.models.tipos.tipoModalidade;

/**
 * @author Gleyser
 *
 */

@Entity
public class PlanoDeMeta {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String titulo;
	private String ano;
	@Enumerated(EnumType.STRING)
	private tipoEstadoDoPlano estadoDoPlano;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private List<Curso> cursosGratuitos;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private List<Curso> cursosPagos;
	@ManyToOne
	private MetaAnual meta;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private List<Modalidade> modalidades;
	private String[] modalidadesPagasDoPlano;
	private String[] modalidadesGratuitasDoPlano;

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
		return meta.getMetaAlunoHoraGratuitas();
	}

	public void setMetaMatriculasGratuitas(int metaMatriculasGratuitas) {
		meta.setMetaMatriculasGratuitas(metaMatriculasGratuitas);
	}

	public int getMetaMatriculasPagas() {
		return meta.getMetaMatriculasPagas();
	}

	public void setMetaMatriculasPagas(int metaMatriculasPagas) {
		meta.setMetaMatriculasPagas(metaMatriculasPagas);
		;
	}

	public int getMetaAlunoHoraGratuitas() {
		return meta.getMetaAlunoHoraGratuitas();
	}

	public void setMetaAlunoHoraGratuitas(int metaAlunoHoraGratuitas) {
		meta.setMetaAlunoHoraGratuitas(metaAlunoHoraGratuitas);
		;
	}

	public int getMetaAlunoHoraPagas() {
		return meta.getMetaAlunoHoraPagas();
	}

	public void setMetaAlunoHoraPagas(int metaAlunoHoraPagas) {
		meta.setMetaMatriculasPagas(metaAlunoHoraPagas);
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

	public MetaAnual getMeta() {
		return meta;
	}

	public void setMeta(MetaAnual meta) {
		this.meta = meta;
	}

	public void tornarPlanoRascunho() {
		this.estadoDoPlano = tipoEstadoDoPlano.Rascunho;		
	}

	public List<Modalidade> getModalidades() {
		return modalidades;
	}

	public void setModalidades(List<Modalidade> modalidades) {
		this.modalidades = modalidades;
	}

	public List<Modalidade> getModalidadesPagas() {
		List<Modalidade> retorno = new ArrayList<Modalidade>();
		if (modalidades.size() > 0) {
			for (Modalidade modalidade : modalidades) {
				if (modalidade.getTipoDePagamento().equals(tipoDeEp.PAGO)) {
					retorno.add(modalidade);
				}
			}
		}

		return retorno;
	}

	public List<Modalidade> getModalidadesGratuitas() {
		List<Modalidade> retorno = new ArrayList<Modalidade>();
		if (modalidades.size() > 0) {
			for (Modalidade modalidade : modalidades) {
				if (modalidade.getTipoDePagamento().equals(tipoDeEp.GRATUITO)) {
					retorno.add(modalidade);
				}
			}
		}
		return retorno;
	}
	
	public void inicializaModalidadesDoPlano() {
		this.modalidades = new ArrayList<Modalidade>();
	}

	public String[] getModalidadesPagasDoPlano() {
		return modalidadesPagasDoPlano;
	}

	public void setModalidadesPagasDoPlano(String[] modalidadesPagasDoPlano) {
		this.modalidadesPagasDoPlano = modalidadesPagasDoPlano;
	}

	public String[] getModalidadesGratuitasDoPlano() {
		return modalidadesGratuitasDoPlano;
	}

	public void setModalidadesGratuitasDoPlano(String[] modalidadesGratuitasDoPlano) {
		this.modalidadesGratuitasDoPlano = modalidadesGratuitasDoPlano;
	}
	
	public void addCursoGratuito(Curso curso) {
		this.cursosGratuitos.add(curso);
	}

	public void inicializaListasDeCursos() {
		this.cursosGratuitos = new ArrayList<Curso>();
		this.cursosPagos = new ArrayList<Curso>();
		
	}

}
