package org.sgl.orc.models.tipos;

public enum tipoCargo {
	COORDENADOR("Coordenador"), INSTRUTOR("Instrutor"), GERENTE("Gerente");

	private String descricao;

	tipoCargo(String string) {
		this.descricao = string;
	}

	public String getDescricao() {
		return descricao;
	}
}
