package com.example.tputesttask.model;

public enum FinanceType {
    BUDGET(1,"бюджет"),
    COMMERCE(2,"договорная основа"),
    SPONSORED(3,"целевое обучение");

    private String value;
    private int code;

    FinanceType(int code, String value){
        this.code = code;
        this.value = value;
    }

}
