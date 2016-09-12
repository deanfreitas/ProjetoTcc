package br.com.projetotcc.entidades;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "role")
public class Role implements Serializable {

	private static final long serialVersionUID = 1089552982627127898L;
	
	@Id
	@GeneratedValue
	@Column(name = "id_role")
	private Long id;
	
	@Column(name = "name_role")
	private String nameRole;
	
	@ManyToMany(mappedBy = "roles")
	private Set<Login> login;
	
	public Role(Long id, String nameRole) {
		super();
		this.id = id;
		this.nameRole = nameRole;
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
		this.nameRole = nameRole;
	}

	public Set<Login> getLogin() {
		return login;
	}

	public void setLogin(Set<Login> login) {
		this.login = login;
	}
}
