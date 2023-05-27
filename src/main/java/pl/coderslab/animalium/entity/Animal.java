package pl.coderslab.animalium.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Getter
@Setter
@Entity
@Table(name = "animals")
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "species")
    @NotBlank(message = "Proszę podać gatunek")
    @Size(min = 2, message = "Gatunek musi mieć co najmniej 2 znaki")
    private String species;

    @Column(name = "microchip")
    @NotBlank(message = "Proszę podać numer chipa")
    @Size(min = 14, max = 14, message = "Numer microchipa musi mieć dokładnie 14 znaków")
    private String microchip;

    @Column(name = "colour")
    @NotBlank(message = "Proszę podać kolor")
    @Size(min = 5, message = "Kolor musi mieć co najmniej 5 znaków")
    private String colour;

    @Column(name = "alive")
    @NotBlank(message = "Proszę podać czy zwierzę żyje - Tak lub Nie")
    @Size(min = 3, max = 3, message = "Odpowiedź musi mieć dokładnie 3 znaki")
    private String alive;
}