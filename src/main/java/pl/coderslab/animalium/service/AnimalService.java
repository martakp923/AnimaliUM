package pl.coderslab.animalium.service;

import pl.coderslab.animalium.entity.Animal;
import pl.coderslab.animalium.entity.Intervention;

import java.util.List;
import java.util.Optional;

public interface AnimalService {
    Animal findByMicrochip(String microchip);

    List<Animal> findAll();

    Optional<Animal> findByAnimalId(Long id);

    void save(Animal animal);

    void update(Animal animal);

    void delete(Long id);

    long getNumberOfAnimals();

    List<Animal> findByUserId(long userId);

}