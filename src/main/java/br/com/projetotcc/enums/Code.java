package br.com.projetotcc.enums;

public enum Code {
    SUCCESS(0), ERROR(1), ERROR_SYSTEM(2);

    private long typeCode;

    Code(long typeCode) {
        this.typeCode = typeCode;
    }

    public long getTypeCode() {
        return typeCode;
    }
}
