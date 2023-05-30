package pl.coderslab.animalium.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.animalium.entity.Intervention;
import pl.coderslab.animalium.repository.InterventionRepository;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
@RequiredArgsConstructor
public class InterventionServiceImplementation implements InterventionService{

    private final InterventionRepository interventionRepository;

    @Override
    public Intervention findByLocation(String location) {
        return interventionRepository.findByLocation(location);
    }

    @Override
    public List<Intervention> findAll() {
        return interventionRepository.findAll();
    }

    @Override
    public Intervention findById(long id) {
        return interventionRepository.findById(id);
    }

    @Override
    public void saveIntervention(Intervention intervention) {
        interventionRepository.save(intervention);

    }

    @Override
    public void update(Intervention intervention) {
        interventionRepository.save(intervention);

    }

    @Override
    public void delete(Long id) {
        interventionRepository.deleteById(id);

    }

    @Override
    public List<Intervention> findByUserId(long userId) {
        return interventionRepository.findByUserId(userId);
    }

    @Override
    public long getNumberOfInterventions() {
        return interventionRepository.count();
    }


}
