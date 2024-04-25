package com.example.tputesttask.controller;


import com.example.tputesttask.exception.NoSuchGroupException;
import com.example.tputesttask.model.Group;
import com.example.tputesttask.service.GroupService;
import com.example.tputesttask.service.StudentsService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class AppController {

    private final GroupService groupService;
    private final StudentsService studentsService;

    @GetMapping("/group")
    public ResponseEntity<?> getStudents(@RequestParam(required = false) String name)
            throws NoSuchGroupException {
        if(name == null){
            return ResponseEntity.ok().body(studentsService.getAllStudents());
        }else{
            Group group = groupService.getGroupByName(name).orElseThrow(NoSuchGroupException::new);
            return ResponseEntity.ok().body(group);
        }
    }


    @ExceptionHandler(NoSuchGroupException.class)
    public ResponseEntity<?> handleNoSuchGroupException(NoSuchGroupException e){
        return ResponseEntity.ok().body(Map.of("message","Нету группы с таким названием!"));
    }


}
