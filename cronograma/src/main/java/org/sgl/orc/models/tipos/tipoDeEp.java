package org.sgl.orc.models.tipos;

public enum tipoDeEp {
	GRATUITO("Gratuito"),
	PAGO("Pago");
	
	private String descricao;

	tipoDeEp(String string) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}	
	
}
