package org.sgl.orc.models.tipos;

public enum tipoEstadoDoPlano {
	Rascunho("Rascunho"), Atual("Atual"), Atual_Retificado("Atual Retificado"), Antigo("Antigo");
	
	private String descricao;

	tipoEstadoDoPlano(String string) {
		this.descricao = string;
	}

	public String getDescricao() {
		return descricao;
	}	

}
