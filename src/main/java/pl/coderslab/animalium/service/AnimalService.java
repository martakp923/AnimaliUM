package pl.coderslab.animalium.service;

import pl.coderslab.animalium.entity.Animal;

import java.util.List;
import java.util.Optional;

public interface AnimalService {
    Animal findByMicrochip(String microchip);

    List<Animal> findAll();

    Animal findById(long id);

    void save(Animal animal);

    void update(Animal animal);

    void delete(Long id);

    long getNumberOfAnimals();

    long countFound();

    long countLost();

    List<Animal> findByUserId(long userId);

    List<Animal> findLostAnimals();

    List<Animal> findFoundAnimals();

}