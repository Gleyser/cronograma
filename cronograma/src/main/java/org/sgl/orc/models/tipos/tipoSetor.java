package org.sgl.orc.models.tipos;

public enum tipoSetor {
	ALIMENTOS("Alimentos"), AUTOMAÇÃO("Automação"), ELETROELETRÔNICA("Eletroeletrônica"), GESTÃO("Gestão"),
	GRÁFICA("Gráfica"), JOGOS_DIGITAIS("Jogos Digitais"), REFRIGERAÇÃO("Refrigeração"), METALMECÂNICA("Metalmecânica"),
	MECATRÔNICA("Mecatrônica"), TI("Tecnologia da Informação"), COORDENAÇÃO("Coordenação"), GERENCIA("Gerência");

	private String descricao;

	tipoSetor(String string) {
		this.descricao = string;
	}

	public String getDescricao() {
		return descricao;
	}
}
