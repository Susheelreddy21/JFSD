package com.klef.jfsd.sdpproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.sdpproject.model.Election;

@Repository
public interface ElectionRepository extends JpaRepository<Election, Integer> {
}
