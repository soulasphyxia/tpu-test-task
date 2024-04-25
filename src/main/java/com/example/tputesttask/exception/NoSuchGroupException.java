package com.example.tputesttask.exception;

public class NoSuchGroupException extends Exception{

    public NoSuchGroupException(String message){
        super(message);
    }

    public NoSuchGroupException(){
        super();
    }
}
