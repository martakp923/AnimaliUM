package pl.coderslab.animalium.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.animalium.entity.Animal;
import pl.coderslab.animalium.entity.Intervention;
import pl.coderslab.animalium.repository.AnimalRepository;
import pl.coderslab.animalium.repository.InterventionRepository;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
@RequiredArgsConstructor
public class AnimalServiceImplementation implements AnimalService {

    private final AnimalRepository animalRepository;
    private final InterventionRepository interventionRepository;

    @Override
    public Animal findByMicrochip(String microchip) {
        return animalRepository.findByMicrochip(microchip);
    }

    @Override
    public List<Animal> findAll() {
        return animalRepository.findAll();
    }

    @Override
    public Animal findById(long id) {
        return animalRepository.findById(id);
    }

    @Override
    public void save(Animal animal) {
        animalRepository.save(animal);

    }

    @Override
    public void update(Animal animal) {
        animalRepository.save(animal);

    }

    @Override
    public void delete(Long id) {
        animalRepository.deleteById(id);

    }

    @Override
    public long getNumberOfAnimals() {
        return animalRepository.count();
    }

    @Override
    public long countFound() {
        return animalRepository.countFound();
    }

    @Override
    public long countLost() {
        return animalRepository.countLost();
    }

    @Override
    public List<Animal> findByUserId(long userId) {
        return animalRepository.findByUserId(userId);    }


}