package dev.patika.dao;

import dev.patika.entities.Animal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnimalRepo extends JpaRepository<Animal,Long> {
    Animal findByName(String name);


    List<Animal> findByCustomerId(Long customer_id);

    List<Animal> findByAnimalId(Long animalId);
}
