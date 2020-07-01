package org.sgl.orc.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author Gleyser
 *
 */
@Entity
public class MetaAnual {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;	
	private String ano;	
	private int metaMatriculasGratuitas;
	private int metaMatriculasPagas;
	private int metaAlunoHoraGratuitas;
	private int metaAlunoHoraPagas;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
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
	
	@Override
	public String toString() {
		return "MetaAnual [id=" + id + ", ano=" + ano + ", metaMatriculasGratuitas=" + metaMatriculasGratuitas
				+ ", metaMatriculasPagas=" + metaMatriculasPagas + ", metaAlunoHoraGratuitas=" + metaAlunoHoraGratuitas
				+ ", metaAlunoHoraPagas=" + metaAlunoHoraPagas + "]";
	}
	
	

}
