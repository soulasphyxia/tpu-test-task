package com.example.tputesttask.repository;

import com.example.tputesttask.model.Group;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface GroupRepository extends JpaRepository<Group, Long> {
    Optional<Group> getGroupByName(String name);
}
