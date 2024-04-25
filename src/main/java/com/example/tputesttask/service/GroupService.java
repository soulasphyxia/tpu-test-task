package com.example.tputesttask.service;


import com.example.tputesttask.model.Group;
import com.example.tputesttask.model.Student;

import java.util.List;
import java.util.Optional;

public interface GroupService {

    Optional<Group> getGroupByName(String groupName);

    List<Group> getAllGroupsSortedByCourse();



}
