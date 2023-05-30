package pl.coderslab.animalium.service;

import pl.coderslab.animalium.entity.Intervention;

import java.util.List;
import java.util.Optional;

public interface InterventionService {

    Intervention findByLocation(String location);

    List<Intervention> findAll();

    Intervention findById(long id);

    void saveIntervention(Intervention intervention);

    void update(Intervention intervention);

    void delete(Long id);

    List<Intervention> findByUserId(long id);
    long getNumberOfInterventions();
}
