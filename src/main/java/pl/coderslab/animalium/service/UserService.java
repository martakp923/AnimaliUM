package pl.coderslab.animalium.service;

import pl.coderslab.animalium.entity.CurrentUser;
import pl.coderslab.animalium.entity.User;

public interface UserService {
    User findByUserName(String username);

    User findByUserId(Long id);

    void saveUser(User user);

    void update(User user);

    void delete(Long id);

    boolean verifyPassword(String password, CurrentUser user);

    long getNumberOfUsers();


}
