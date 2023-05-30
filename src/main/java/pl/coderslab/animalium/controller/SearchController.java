package pl.coderslab.animalium.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.animalium.entity.Animal;
import pl.coderslab.animalium.service.AnimalService;

import javax.transaction.Transactional;

@Controller
@Transactional
@RequiredArgsConstructor
public class SearchController {

    private final AnimalService animalService;

    @GetMapping("/search")
    public String showSearchForm(Model model) {
        model.addAttribute("animal", new Animal());
        return "searchForm";
    }

  @PostMapping("/search")
    public String searchAnimal(@RequestParam("microchip") String microchip, @ModelAttribute("animal") Animal animal, Model model) {
       animal = animalService.findByMicrochip(microchip);
      if (animal != null) {
          model.addAttribute("animal", animal);
          model.addAttribute("animalFound", true);
      } else {
          model.addAttribute("animalFound", false);
      }
      return "searchResult";
   }
}
