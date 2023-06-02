package pl.coderslab.animalium.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "interventions")
public class Intervention {

    @Id
    @Column(name = "intervention_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "Proszę podać datę")
    private LocalDate date;

    @Column(name = "location")
    @NotBlank(message = "Proszę podać lokalizację")
    @Size(min = 2, message = "Lokalizacja musi mieć co najmniej 2 znaki")
    private String location;

    @Column(name = "description")
    @NotBlank(message = "Proszę podać opis")
    @Size(min = 5, message = "Opis musi mieć co najmniej 5 znaków")
    private String description;

    @Column(name = "result")
    @NotBlank(message = "Proszę podać podjęte działania")
    @Size(min = 5, message = "Podjęte działania muszą mieć co najmniej 5 znaków")
    private String result;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

   @OneToMany(mappedBy = "intervention", cascade = CascadeType.REMOVE)
    private List<Animal> animals;

}