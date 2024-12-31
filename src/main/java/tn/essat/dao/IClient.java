package tn.essat.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tn.essat.model.Client;

@Repository
public interface IClient extends JpaRepository<Client, Integer> {
    
    // Recherche d'un client par son nom d'utilisateur
    Client findByUsername(String username);

    // Recherche d'un client par son email
    Client findByEmail(String email);

    // Vous pouvez ajouter d'autres méthodes de recherche si nécessaire
    // Exemple: Trouver un client par son nom
    List<Client> findByNom(String nom);
    
    
}