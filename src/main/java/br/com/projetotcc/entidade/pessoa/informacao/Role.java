package br.com.projetotcc.entidade.pessoa.informacao;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceDadosPessoa;

import javax.persistence.*;

@Entity
@Table(name = "role")
public class Role implements InterfaceDadosPessoa {

	@Id
	@GeneratedValue
	@Column(name = "Id_Role", nullable = false)
	private Long id;
	
	@Column(name = "Role_Name")
	private String nameRole;
	
	@ManyToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.LAZY, targetEntity = Paciente.class)
	@JoinColumn(name = "id_Paciente", insertable = true, updatable = true)
	private Paciente paciente;
	
	@ManyToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.LAZY, targetEntity = Nutricionista.class)
	@JoinColumn(name = "id_nutricionista", insertable = true, updatable = true)
	private Nutricionista nutricionista;
	
	public Role(String nameRole) {
		super();
		this.nameRole = nameRole;
	}
	
	public Role(String nameRole, Paciente paciente) {
		super();
		this.nameRole = nameRole;
		this.paciente = paciente;
	}
	
	public Role(String nameRole, Nutricionista nutricionista) {
		super();
		this.nameRole = nameRole;
		this.nutricionista = nutricionista;
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

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	public Nutricionista getNutricionista() {
		return nutricionista;
	}

	public void setNutricionista(Nutricionista nutricionista) {
		this.nutricionista = nutricionista;
	}
}
