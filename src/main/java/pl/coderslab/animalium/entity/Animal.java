package pl.coderslab.animalium.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Getter
@Setter
@Entity
@Table(name = "animals")
public class Animal {

    @Id
    @Column(name = "animal_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "species")
    @NotBlank(message = "Proszę podać gatunek")
    @Size(min = 2, message = "Gatunek musi mieć co najmniej 2 znaki")
    private String species;

    @Column(name = "microchip")
    private String microchip;

    @Column(name = "colour")
    @NotBlank(message = "Proszę podać kolor")
    @Size(min = 5, message = "Kolor musi mieć co najmniej 5 znaków")
    private String colour;

    @Column(name="gender")
    @NotBlank(message = "Proszę podać płeć")
    @Size(min = 1, message = "Płeć musi mieć co najmniej 1 znak")
    private String gender;


    @Column(name = "status")
    @Pattern(regexp = "^(Znalezione|Zaginione)$", message = "Proszę podać status zwierzęcia: Znalezione lub Zaginione")
    @NotBlank(message = "Proszę podać status zwierzęcia: Znalezione lub Zaginione")
    private String status;

    @ManyToOne
    @JoinColumn(name = "intervention_id")
    private Intervention intervention;
    }
