package pl.coderslab.animalium.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.animalium.entity.User;

import javax.transaction.Transactional;

@Controller
@Transactional
@RequiredArgsConstructor
public class LoginController {

    @GetMapping("login")
    public String login(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @PostMapping("/wrong")
    public String wrong() {
        return "wrong";
    }
}
