package pl.coderslab.animalium.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.animalium.entity.Animal;
import pl.coderslab.animalium.entity.CurrentUser;
import pl.coderslab.animalium.entity.Intervention;
import pl.coderslab.animalium.entity.User;
import pl.coderslab.animalium.service.AnimalService;
import pl.coderslab.animalium.service.InterventionService;
import pl.coderslab.animalium.service.UserService;

import javax.transaction.Transactional;
import java.util.List;

@Controller
@Transactional
@RequiredArgsConstructor
public class HomeController {

    private final InterventionService interventionService;
    private final AnimalService animalService;
    private final UserService userService;

    @GetMapping("/home")
    public String home(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        User user = currentUser.getUser();
        model.addAttribute("user", user);
        long numberOfAnimals = animalService.getNumberOfAnimals();
        model.addAttribute("numberOfAnimals", numberOfAnimals);
        long numberOfUsers = userService.getNumberOfUsers();
        model.addAttribute("numberOfUsers", numberOfUsers);
        long numberOfInterventions = interventionService.getNumberOfInterventions();
        model.addAttribute("numberOfInterventions", numberOfInterventions);
        long numberOfLostAnimals = animalService.countLost();
        model.addAttribute("numberOfLostAnimals", numberOfLostAnimals);
        long numberOfFoundAnimals = animalService.countFound();
        model.addAttribute("numberOfFoundAnimals", numberOfFoundAnimals);
        List<Intervention> interventions = interventionService.findByUserId(user.getId());
        model.addAttribute("interventions", interventions);
        List<Animal> userAnimals = animalService.findByUserId(user.getId());
        model.addAttribute("userAnimals", userAnimals);
        List<Animal> animals = animalService.findAll();
        model.addAttribute("animals", animals);
        return "home";
    }
    @GetMapping("logout")
    public String logout() {
        SecurityContextHolder.getContext().getAuthentication().setAuthenticated(false);
        return "redirect:/";
    }

    @GetMapping("/forbidden")
    public String forbidden() {
        return "forbidden";

    }
}

