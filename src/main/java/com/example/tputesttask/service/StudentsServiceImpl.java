package com.example.tputesttask.service;

import com.example.tputesttask.model.Group;
import com.example.tputesttask.model.Student;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
@RequiredArgsConstructor
public class StudentsServiceImpl implements StudentsService{
    private final GroupService groupService;

    @Override
    public List<Student> getAllStudents() {
        List<Group> groups = groupService.getAllGroupsSortedByCourse();
        List<Student> students = new ArrayList<>();
        for(Group group : groups){
            for(Student student: group.getStudentList()){
                student.setCourse(group.getCourse());
                student.setGroup(group.getName());
                students.add(student);
            }
        }
        return students;
    }

}
