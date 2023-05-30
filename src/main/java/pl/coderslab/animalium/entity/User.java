package pl.coderslab.animalium.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@Entity
@Transactional
@Table(name = "users")
public class User {

    @Id
    @Column(name = "user_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name")
    @NotBlank(message = "Proszę podać imię")
    @Size(min = 2, message = "Imię musi mieć co najmniej 2 znaki")
    private String firstName;

    @Column(name = "last_name")
    @NotBlank(message = "Proszę podać nazwisko")
    @Size(min = 2, message = "Nazwisko musi mieć co najmniej 2 znaki")
    private String lastName;

    @Column(name = "username")
    @NotBlank(message = "Proszę podać nazwę użytkownika")
    @Size(min = 2, message = "Nazwa użytkownika musi mieć co najmniej 2 znaki")
    private String username;

    @Column(name = "email", unique = true)
    @NotBlank(message = "Proszę podać email")
    @Email(message = "Niepoprawny mail")
    private String email;

    @Column(name = "password")
    @NotBlank(message = "Proszę podać hasło")
    @Size(min = 5, message = "Hasło musi mieć co najmniej 5 znaków")
    private String password;

    @Transient
    private String confirmPassword;

    @OneToMany(mappedBy = "user")
    private List<Intervention> interventions = new ArrayList<>();

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;


}