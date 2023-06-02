package pl.coderslab.animalium.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.animalium.entity.CurrentUser;
import pl.coderslab.animalium.entity.User;

import javax.transaction.Transactional;
import javax.validation.Valid;

@Controller
@Transactional
@RequiredArgsConstructor
@RequestMapping("home")
public class UserController {

    @GetMapping("user/details")
    public String user(Model model, @AuthenticationPrincipal CurrentUser user) {
        model.addAttribute("user", user.getUser());
        return "userDetails";
    }

    @GetMapping("user/edit")
    public String editUser(Model model, @AuthenticationPrincipal CurrentUser user) {
        model.addAttribute("user", user.getUser());
        return "userEdit";
    }

    @PostMapping("user/edit")
    public String editUser(@ModelAttribute("user") @Valid User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "userEdit";
        }
        return "redirect:/home/user/details";
    }


}
