package pl.coderslab.animalium.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import pl.coderslab.animalium.service.SpringDataUserDetailsService;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests()
                .antMatchers("/", "/login", "/register", "/search").permitAll()
                .antMatchers("/home/**").authenticated()
                .and().formLogin().loginPage("/login").defaultSuccessUrl("/home").failureForwardUrl("/wrong")
                .and().logout().logoutUrl("/logout").clearAuthentication(true).invalidateHttpSession(true).logoutSuccessUrl("/")
                .permitAll()
                .and().exceptionHandling().accessDeniedPage("/forbidden");
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SpringDataUserDetailsService customUserDetailsService() {
        return new SpringDataUserDetailsService();
    }
}