package org.sgl.orc.models.tipos;

public enum tipoUnidade {
	SENAI_SL_EP("CEP STENIO LOPES"), SENAI_SL_STI("IST STENIO LOPES"), SENAI_SL_EP_STI("IST STENIO LOPES");	
	
	private String descricao;

	tipoUnidade(String string) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}	

}
