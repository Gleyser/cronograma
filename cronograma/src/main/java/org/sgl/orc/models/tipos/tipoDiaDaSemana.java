package org.sgl.orc.models.tipos;

public enum tipoDiaDaSemana {
	SEGUNDA("2"), TERÇA("3"), QUARTA("4"), QUINTA("5"), SEXTA("6"), SÁBADO("Sa"), DOMINGO("Do");

	private String descricao;

	tipoDiaDaSemana(String string) {
		this.descricao = string;
	}

	public String getDescricao() {
		return descricao;
	}

}
