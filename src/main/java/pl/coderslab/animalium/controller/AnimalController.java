package pl.coderslab.animalium.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.animalium.entity.Animal;
import pl.coderslab.animalium.service.AnimalService;
import pl.coderslab.animalium.service.InterventionService;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.Collections;
import java.util.List;

@Controller
@Transactional
@RequiredArgsConstructor
@RequestMapping("/home")
public class AnimalController {
    private final AnimalService animalService;

    private final InterventionService interventionService;

    @GetMapping("animal/addToIntervention")
    public String showAnimalForm(@RequestParam("id") Long interventionId, Model model) {
            Animal animal = new Animal();
            animal.setIntervention(interventionService.findById(interventionId));
            model.addAttribute("animal", animal);
            return "addAnimaltoInterventionForm";
        }

    @PostMapping("animal/addToIntervention")
    public String createAnimalIntervention(@ModelAttribute("animal") @Valid Animal animal, BindingResult result){
        if (result.hasErrors()) {
            return "addAnimaltoInterventionForm";
        }
        animalService.save(animal);
        return "redirect:/home";
    }

    @GetMapping("animal/all")
    public String showAllAnimals(Model model) {
        List<Animal> animals = animalService.findAll();
        Collections.reverse(animals);
        model.addAttribute("animals", animals);
        return "animalAll";
    }

    @GetMapping("animal/details")
    public String showAnimal(@RequestParam("id") Long id, Model model) {
        Animal animal = animalService.findById(id);
        model.addAttribute("animal", animal);
        return "animalDetails";
    }

    @GetMapping("animal/add")
    public String showAnimalForm(Model model) {
        Animal animal = new Animal();
        model.addAttribute("animal", animal);
        return "addAnimalForm";
    }

    @PostMapping("animal/add")
    public String create(@ModelAttribute("animal") @Valid Animal animal, BindingResult result){
        if (result.hasErrors()) {
            return "addAnimalForm";
        }
        animalService.save(animal);
        return "redirect:/home/animal/all";
    }

    @GetMapping("animal/delete")
    public String deleteAnimal(@RequestParam("id") Long id) {
        animalService.delete(id);
        return "redirect:/home/animal/all";
    }

    @GetMapping("animal/edit")
    public String editAnimal(@RequestParam("id") Long id, Model model) {
        Animal animalEdit = animalService.findById(id);
        model.addAttribute("animal", animalEdit);
        return "animalEdit";
    }

    @PostMapping("animal/edit")
    public String editAnimal(@ModelAttribute("animal") @Valid Animal animal, BindingResult result) {
        if (result.hasErrors()) {
            return "animalEdit";
        }
        animalService.update(animal);
        return "redirect:/home/animal/all";
    }

    @GetMapping("animal/lost")
    public String showLostAnimals(Model model) {
        List<Animal> animals = animalService.findLostAnimals();
        Collections.reverse(animals);
        model.addAttribute("animals", animals);
        return "animalsLost";
    }

    @GetMapping("animal/found")
    public String showFoundAnimals(Model model) {
        List<Animal> animals = animalService.findFoundAnimals();
        Collections.reverse(animals);
        model.addAttribute("animals", animals);
        return "animalsFound";
    }


}