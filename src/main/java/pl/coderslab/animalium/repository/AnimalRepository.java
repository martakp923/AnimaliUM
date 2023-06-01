package pl.coderslab.animalium.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.animalium.entity.Animal;

import java.util.List;

@Repository
public interface AnimalRepository extends JpaRepository<Animal, Long> {
    Animal findByMicrochip(String microchip);
    long count();

    @Query(value = "SELECT a FROM Animal a JOIN a.intervention i JOIN i.user u WHERE u.id = ?1")
    List<Animal> findByUserId(long userId);

    @Query(value = "SELECT a FROM Animal a WHERE a.status = 'Zaginione'")
    List<Animal> findLostAnimals();

    @Query(value = "SELECT a FROM Animal a WHERE a.status = 'Znalezione'")
    List<Animal> findFoundAnimals();

    @Query(value = "SELECT COUNT (a) FROM Animal a WHERE a.status = 'Znalezione'")
    long countFound();

    @Query(value = "SELECT COUNT (a) FROM Animal a WHERE a.status = 'Zaginione'")
    long countLost();

    Animal findById(long id);
}
