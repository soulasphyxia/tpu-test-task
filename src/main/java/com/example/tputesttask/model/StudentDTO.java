package com.example.tputesttask.model;


import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentDTO {
    private String firstName;
    private String secondName;
    private String lastName;
    private String sex;
    private String status;
    private String financeType;
    private Integer course;
}
