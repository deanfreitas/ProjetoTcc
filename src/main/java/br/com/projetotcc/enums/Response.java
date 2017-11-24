package br.com.projetotcc.enums;

public enum Response {
    ERROR_SYSTEM("Erro no sistema");

    private String typeResponse;

    Response(String typeResponse) {
        this.typeResponse = typeResponse;
    }

    public String getTypeResponse() {
        return typeResponse;
    }
}
