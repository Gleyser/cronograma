package org.sgl.orc.models.tipos;

public enum tipoTurno {
MANHÃ("Manhã"), TARDE("Tarde"), NOITE("Noite");

private String descricao;

	tipoTurno(String string) {
		this.descricao = string;
	}

	public String getDescricao() {
		return descricao;
	}	


}
