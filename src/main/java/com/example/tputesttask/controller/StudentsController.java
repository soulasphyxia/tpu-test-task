package com.example.tputesttask.controller;


import com.example.tputesttask.model.Group;
import com.example.tputesttask.repository.GroupRepository;
import com.example.tputesttask.service.StudentsServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/group")
@RequiredArgsConstructor
public class StudentsController {

    private final StudentsServiceImpl studentsService;
    private final GroupRepository groupRepository;


    @GetMapping
    public ResponseEntity<?> getStudents(@RequestParam String name){
        Group group = groupRepository.getGroupByName(name).orElse(null);
        return ResponseEntity.ok().body(group);
    }


}
