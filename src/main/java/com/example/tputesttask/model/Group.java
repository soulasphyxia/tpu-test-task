package com.example.tputesttask.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "groups")
@Entity
public class Group {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "group_id")
    @JsonIgnore
    private Long group_id;
    @Column(name = "name")
    private String name;
    @Column(name = "institute_id")
    @JsonIgnore
    private Long institute_id;
    @Column(name = "year_of_admission")
    private Integer yearOfAdmission;
    @Column(name = "duration")
    private Integer duration;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinTable(schema = "public", name = "students_in_groups",
            joinColumns = @JoinColumn(name = "group_id"),
            inverseJoinColumns = @JoinColumn(name = "student_id"))
    @OrderBy("secondName")
    private List<Student> studentList;
}
