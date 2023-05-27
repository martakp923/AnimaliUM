package pl.coderslab.animalium.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.animalium.entity.User;
import pl.coderslab.animalium.service.UserService;

import javax.validation.Valid;

@Controller
@Transactional
@RequiredArgsConstructor
public class RegisterController {
    private final UserService userService;

    @GetMapping("/register")
    public String createUser(Model model) {
        model.addAttribute("user", new User());
        return "registerForm";
    }

    @PostMapping("/register")
    public String createUser(@ModelAttribute("user") @Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "registerForm";
        }
        if (user.getPassword().equals(user.getConfirmPassword())) {
            userService.saveUser(user);
        } else {
            return "registerForm";
        }
        return "redirect:/login";
    }
}
