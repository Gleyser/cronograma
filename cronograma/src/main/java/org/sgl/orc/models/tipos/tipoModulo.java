package org.sgl.orc.models.tipos;

public enum tipoModulo {
	Básico("Básico"), Introdutório("Introdutório"), Específico_I("Específico I"), Específico_II("E II"),
	Específico_III("Específico III"), Específico_IV("Específico IV"), Único("Único"), EducParaTrabalho("Educ. p/ Trabalho"), Específico("Específico");

	private String descricao;

	tipoModulo(String string) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}

}
