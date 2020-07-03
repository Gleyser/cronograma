package org.sgl.orc.models.tipos;

public enum tipoDiaDaSemana {
	SEGUNDA("2"), TERÇA("3"), QUARTA("4"), QUINTA("5"), SEXTA("6"), SÁBADO("S"), DOMINGO("D");

	private String descricao;

	tipoDiaDaSemana(String string) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}

}
