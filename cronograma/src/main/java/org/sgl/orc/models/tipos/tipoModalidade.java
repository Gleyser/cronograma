package org.sgl.orc.models.tipos;

public enum tipoModalidade {
APRENDIZAGEM_INDUSTRIAL_BASICA("Aprendizagem Básica"),
APRENDIZAGEM_INDUSTRIAL_TECNICA("Aprendizagem Técnica"),
APERFEICOAMENTO_EAD("Aperfeiçoameno Profissional EAD"),
APERFEICOAMENTO("Aperfeiçoamento Profissional"),
HABILITACAO_TECNICA("Habilitação Técnica"),
HABILITACAO_TECNICA_EBEP("Habilitação Técnica EBEP"),
HABILITACAO_TECNICA_EAD("Habilitação Técnica EAD"),
INICIACAO_NEM("Iniciação Profissional NEM"),
INICIACAO("Iniciação Profissional"),
INICIACAO_EAD("Iniciação Profissional EAD"),
INICIACAO_EAD_BOLSAS("Iniciação EAD Bolsas"),
QUALIFICACAO("Qualificação Profissional"),
QUALIFICACAO_EAD("Qualificação Profissional EAD");

private String descricao;

	tipoModalidade(String string) {
	this.descricao = string;
}

public String getDescricao() {
	return descricao;
}
}
