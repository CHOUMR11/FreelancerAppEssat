package tn.essat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
public class Client {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;  // L'identifiant unique du client

    @Column(nullable = false)
    private String nom;  // Le nom du client

    @Column(nullable = false, unique = true)
    private String email;  // L'email unique du client

    @Column(nullable = false, unique = true)
    private String username;  // Le nom d'utilisateur pour la connexion

    @Column(nullable = false)
    private String password;  // Le mot de passe du client

    // Vous pouvez ajouter des attributs supplémentaires si nécessaire
    private String phone;  // Le numéro de téléphone (optionnel)

    // Getters et Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
