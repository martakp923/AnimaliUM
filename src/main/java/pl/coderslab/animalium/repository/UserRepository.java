package pl.coderslab.animalium.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.animalium.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    long count();

    User findByUsername(String name);
}