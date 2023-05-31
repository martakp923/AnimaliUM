package pl.coderslab.animalium.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.animalium.entity.CurrentUser;
import pl.coderslab.animalium.entity.Intervention;
import pl.coderslab.animalium.service.InterventionService;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.Collections;
import java.util.List;

@Controller
@Transactional
@RequiredArgsConstructor
@RequestMapping("/home")
public class InterventionController {

    private final InterventionService interventionService;

    @GetMapping("intervention/add")
    public String createIntervention(Model model) {
        model.addAttribute("intervention", new Intervention());
        return "addInterventionForm";
    }

    @PostMapping("intervention/add")
    public String createIntervention(@ModelAttribute("intervention") @Valid Intervention intervention, BindingResult result, @AuthenticationPrincipal CurrentUser user) {
        if (result.hasErrors()) {
            return "addInterventionForm";
        }
        intervention.setUser(user.getUser());
        interventionService.saveIntervention(intervention);
        return "redirect:/home";

    }

    @GetMapping("/intervention/all")
    public String showAllInterventions(Model model) {
        List<Intervention> interventions = interventionService.findAll();
        Collections.reverse(interventions);
        model.addAttribute("interventions",  interventions);
        return "interventionAll";
    }

    @GetMapping("intervention/details")
    public String showInterventionDetails(@RequestParam("id") long id, Model model) {
        Intervention intervention = interventionService.findById(id);
        model.addAttribute("intervention", intervention);
        return "interventionDetails";
    }

    @GetMapping("intervention/edit")
    public String editIntervention(@RequestParam("id") long id, Model model) {
        Intervention interventionEdit = interventionService.findById(id);
        model.addAttribute("intervention", interventionEdit);
        return "interventionEdit";
    }

    @PostMapping("intervention/edit")
    public String editInterventionPost(@ModelAttribute("interventionEdit") @Valid Intervention intervention, BindingResult bindingResult, @AuthenticationPrincipal CurrentUser user) {
        if (bindingResult.hasErrors()) {
            return "interventionEdit";
        }
        intervention.setUser(user.getUser());
        interventionService.update(intervention);
        return "redirect:/home/intervention/all";
    }
    @GetMapping("intervention/delete")
    public String deleteIntervention(@RequestParam("id") long id) {
        interventionService.delete(id);
        return "redirect:/home/intervention/all";
    }

}



