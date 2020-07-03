package org.sgl.orc.models.tipos;

public enum tipoTurno {
MANHÃ("M"), TARDE("T"), NOITE("N");

private String descricao;

	tipoTurno(String string) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}	


}
