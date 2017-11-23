package br.com.projetotcc.enums;

public enum Context {

    DADOS_CADASTRADOS_PESSOA("dadosCadastradosPessoa"), LOGIN_USUARIO("loginUsuario");

    private String typeContext;

    Context(String typeContext) {
        this.typeContext = typeContext;
    }

    public String getTypeContext() {
        return typeContext;
    }
}
