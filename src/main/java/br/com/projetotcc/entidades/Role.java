package br.com.projetotcc.entidades;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "role")
public class Role implements InterfaceEntidade {

	private static final long serialVersionUID = 1089552982627127898L;
	
	@Id
	@GeneratedValue
	@Column(name = "id_role", nullable = false)
	private Long id;
	
	@Column(name = "name_role")
	private String nameRole;
	
	@ManyToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.LAZY, targetEntity = Pessoa.class)
	@JoinColumn(name = "codigo_pessoa", insertable = true, updatable = true)
	private Pessoa pessoa;
	
	public Role(String nameRole) {
		super();
		this.nameRole = nameRole;
	}
	
	public Role(String nameRole, Pessoa pessoa) {
		super();
		this.nameRole = nameRole;
		this.pessoa = pessoa;
	}
	
	public Role(Pessoa pessoa) {
		super();
		this.pessoa = pessoa;
	}
	
	public Role() {
		super();
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNameRole() {
		return nameRole;
	}

	public void setNameRole(String nameRole) {
		this.nameRole = nameRole.trim();
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}
}
