package org.sgl.orc.models.tipos;

public enum tipoContrato {
	CLT("CLT"), CREDENCIADO("RPS");
	
	private String descricao;
	
	tipoContrato(String string) {
		this.descricao = string;
	}

	public String getDescricao() {
		return descricao;
	}	


}
