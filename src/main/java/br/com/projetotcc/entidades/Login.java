package br.com.projetotcc.entidades;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "login")
public class Login implements InterfaceEntidade {

	private static final long serialVersionUID = 7405967516600314828L;

	@Id
	@GeneratedValue
	@Column(name = "id_login", nullable = false)
	private Long id;
	
	@Column(name = "usuario")
	private String usuario;

	@Column(name = "senha")
	private String senha;
	
	@OneToOne(mappedBy = "login")
	private Pessoa pessoa;
	
	@ManyToMany
	@JoinTable(name = "login_role", joinColumns = @JoinColumn(name = "login_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Role> roles;

	public Login(Long id, String usuario, String senha) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.senha = senha;
	}
	
	public Login(String usuario, String senha) {
		super();
		this.usuario = usuario;
		this.senha = senha;
	}
	
	public Login() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}
	
	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
}
