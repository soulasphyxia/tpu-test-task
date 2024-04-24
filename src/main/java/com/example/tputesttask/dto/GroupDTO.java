package com.example.tputesttask.dto;


import com.example.tputesttask.model.Student;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class GroupDTO {
    private String name;
    private String institute;
    private Integer yearOfAdmission;
    private Integer duration;
    private Integer course;
    private List<Student> studentList;
}

