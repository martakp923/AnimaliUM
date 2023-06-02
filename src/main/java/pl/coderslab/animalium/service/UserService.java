package pl.coderslab.animalium.service;

import pl.coderslab.animalium.entity.CurrentUser;
import pl.coderslab.animalium.entity.User;

public interface UserService {
    User findByUserName(String username);

    void saveUser(User user);

    void update(User user);

    void delete(Long id);


}
