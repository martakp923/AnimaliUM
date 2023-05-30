package pl.coderslab.animalium.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.animalium.entity.Intervention;

import java.util.Date;
import java.util.List;

@Repository
public interface InterventionRepository extends JpaRepository<Intervention, Long> {

    Intervention findById(long id);

    List<Intervention> findAll();
    Intervention findByLocation(String location);

    Intervention findByDate(Date date);

    Intervention findByDescription(String description);

    List<Intervention> findByUserId(long userId);

    long count();
}