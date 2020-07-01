package org.sgl.orc.models;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Usuario {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
	private String email;
	private String senha;
	@Enumerated(EnumType.STRING)
	private tipoCargo cargo;
	private String nome;
	@Enumerated(EnumType.STRING)
	private tipoSetor setor;
	@Enumerated(EnumType.STRING)
	private tipoContrato tipoDeContrato;
	@Enumerated(EnumType.STRING)
	private tipoUnidade unidade;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
		
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public tipoCargo getCargo() {
		return cargo;
	}
	public void setCargo(tipoCargo cargo) {
		this.cargo = cargo;
	}
	public tipoSetor getSetor() {
		return setor;
	}
	public void setSetor(tipoSetor setor) {
		this.setor = setor;
	}
		
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public tipoContrato getTipoDeContrato() {
		return tipoDeContrato;
	}
	public void setTipoDeContrato(tipoContrato tipoDeContrato) {
		this.tipoDeContrato = tipoDeContrato;
	}
		
	public tipoUnidade getUnidade() {
		return unidade;
	}
	public void setUnidade(tipoUnidade unidade) {
		this.unidade = unidade;
	}
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", email=" + email + ", senha=" + senha + ", cargo=" + cargo + ", nome=" + nome
				+ ", setor=" + setor + "]";
	}
	
	
	
	
	
	

}
