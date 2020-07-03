package org.sgl.orc.models;


import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.sgl.orc.models.tipos.tipoModalidade;
import org.sgl.orc.models.tipos.tipoDeEp;;


@Entity
public class Modalidade {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;	
	private String comentario;
	@Enumerated(EnumType.STRING)
	private tipoDeEp tipoDePagamento;
	@Enumerated(EnumType.STRING)
	private tipoModalidade tipoModalidade;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String titulo) {
		this.comentario = titulo;
	}
	public tipoDeEp getTipoDePagamento() {
		return tipoDePagamento;
	}
	public void setTipoDePagamento(tipoDeEp tipoDePagamento) {
		this.tipoDePagamento = tipoDePagamento;
	}
	public tipoModalidade getTipoModalidade() {
		return tipoModalidade;
	}
	public void setTipoModalidade(tipoModalidade tipoModalidade) {
		this.tipoModalidade = tipoModalidade;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((comentario == null) ? 0 : comentario.hashCode());
		result = prime * result + id;
		result = prime * result + ((tipoDePagamento == null) ? 0 : tipoDePagamento.hashCode());
		result = prime * result + ((tipoModalidade == null) ? 0 : tipoModalidade.hashCode());
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
		Modalidade other = (Modalidade) obj;
		if (comentario == null) {
			if (other.comentario != null)
				return false;
		} else if (!comentario.equals(other.comentario))
			return false;
		if (id != other.id)
			return false;
		if (tipoDePagamento != other.tipoDePagamento)
			return false;
		if (tipoModalidade != other.tipoModalidade)
			return false;
		return true;
	}
	
	
	
	
	

}
