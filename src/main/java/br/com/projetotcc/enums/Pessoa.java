package br.com.projetotcc.enums;

public enum Pessoa {
    NUTRICIONISTA("nutricionista"), PACIENTE("paciente");

    private String typePessoa;

    Pessoa(String typePessoa) {
        this.typePessoa = typePessoa;
    }

    public String getTypePessoa() {
        return typePessoa;
    }
}
