package com.example.tputesttask.service;

import com.example.tputesttask.model.Group;
import com.example.tputesttask.model.Institute;
import com.example.tputesttask.model.Student;
import com.example.tputesttask.repository.GroupRepository;
import com.example.tputesttask.repository.InstituteRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.Year;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;


@Service
@RequiredArgsConstructor
public class GroupServiceImpl implements GroupService{

    private final GroupRepository groupRepository;
    private final InstituteRepository instituteRepository;
    @Override
    public Optional<Group> getGroupByName(String groupName) {
        Optional<Group> optionalGroup = groupRepository.getGroupByName(groupName);
        if(optionalGroup.isPresent()){
            Group group = optionalGroup.get();
            Optional<Institute> institute = instituteRepository.findById(group.getInstitute_id());
            group.setCourse(getCourse(group));
            group.setInstituteName(institute.get().getName());
            List<Student> studentList = group.getStudentList();
            studentList.sort(Comparator.comparing(a -> (a.getSecondName() + a.getFirstName() + a.getLastName())));
            group.setStudentList(studentList);
            return Optional.of(group);
        }
        return Optional.empty();
    }

    private Integer getCourse(Group group){
        int year = group.getYearOfAdmission();
        int currentYear = Year.now().getValue();
        return currentYear - year == 0 ? 1 : currentYear - year;
    }

    @Override
    public List<Group> getAllGroupsSortedByCourse() {
        List<Group> groups = groupRepository.findAll();
        for(Group group : groups){
            group.setCourse(getCourse(group));
        }
        groups.sort(Comparator.comparingInt(Group::getCourse));
        return groups;
    }
}
