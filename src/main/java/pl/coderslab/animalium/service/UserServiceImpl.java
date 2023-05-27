package pl.coderslab.animalium.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.animalium.entity.CurrentUser;
import pl.coderslab.animalium.entity.Role;
import pl.coderslab.animalium.entity.User;
import pl.coderslab.animalium.repository.RoleRepository;
import pl.coderslab.animalium.repository.UserRepository;

import java.util.Arrays;
import java.util.HashSet;

@Service
@Transactional
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    @Override
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        Role userRole = roleRepository.findByName("ROLE_USER");
        user.setRoles(new HashSet<>(Arrays.asList(userRole)));
        userRepository.save(user);

    }

    @Override
    public User findByUserId(Long id) {
        return userRepository.findById(id).orElseThrow();
    }

    @Override
    public User findByUserName(String username) {
        return userRepository.findByUsername(username);
    }
    @Override
    public void update(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        Role userRole = roleRepository.findByName("ROLE_USER");
        user.setRoles(new HashSet<>(Arrays.asList(userRole)));
        userRepository.save(user);
    }

    @Override
    public void delete(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public boolean verifyPassword(String password, CurrentUser user) {
        User userToVerify = userRepository.findByUsername(user.getUsername());
        return passwordEncoder.matches(password, userToVerify.getPassword());
    }

}