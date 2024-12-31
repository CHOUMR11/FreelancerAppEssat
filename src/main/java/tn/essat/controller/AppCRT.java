package tn.essat.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tn.essat.dao.IProject;
import tn.essat.dao.IClient;
import tn.essat.dao.IUser;
import tn.essat.model.Client;
import tn.essat.model.Freelancer;
import tn.essat.model.Project;
import tn.essat.model.User;

import java.util.List;
import java.util.Optional;

@Controller
public class AppCRT {

    @Autowired
    private IProject dao_project;
    @Autowired
    private IUser dao_user;
    @Autowired
    private IClient dao_client;

    // Méthode générique pour récupérer l'utilisateur connecté
    private User getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();  // Récupérer le nom d'utilisateur
        return dao_user.findByUsername(username);   // Rechercher l'utilisateur dans la base de données
    }

    // Méthode générique pour récupérer le client connecté
    private Client getCurrentClient() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        return dao_client.findByUsername(username);  // Recherche du client par son nom d'utilisateur
    }

    // Page de connexion
    @RequestMapping(value = "/login", method = {RequestMethod.POST, RequestMethod.GET})
    public String login(@RequestParam(value = "error", required = false) String error, Model model) {
        String msg = null;
        if (error != null) {
            msg = "Username or Password is incorrect!";
        }
        model.addAttribute("errorMessage", msg);
        return "login"; // Retourne la page de connexion
    }

    // Page d'accueil
    @GetMapping("/")
    public String homePage(Model model) {
        List<Project> projs = dao_project.findAll();
        model.addAttribute("projs", projs);
        return "home"; // Retourne la page d'accueil affichant tous les projets
    }

    // Détail d'un projet
    @GetMapping("/project/{id}")
    public String viewProject(Model model, @PathVariable int id) {
        Optional<Project> proj = dao_project.findById(id);
        if (proj.isPresent()) {
            model.addAttribute("proj", proj.get());
        }
        return "detail_project"; // Retourne la page de détail du projet
    }

    // Inscription d'un client
    @GetMapping("/inscription_client")
    public String inscriptionClient(Model model) {
        // Vérifie si l'utilisateur est déjà connecté
        if (getCurrentUser() != null) {
            return "redirect:/profile"; // Redirige si l'utilisateur est déjà connecté
        }
        model.addAttribute("client", new Client());
        return "inscription_client"; // Retourne la page d'inscription du client
    }

    @PostMapping("/inscription_client")
    public String registerClient(@ModelAttribute Client client) {
        dao_client.save(client);
        return "redirect:/home"; // Redirige vers la page d'accueil après l'inscription
    }

    // Inscription d'un freelancer
    @GetMapping("/inscription_freelancer")
    public String inscriptionFreelancer(Model model) {
        // Vérifie si l'utilisateur est déjà connecté
        if (getCurrentUser() != null) {
            return "redirect:/profile"; // Redirige si l'utilisateur est déjà connecté
        }
        model.addAttribute("freelancer", new Freelancer());
        return "inscription_freelancer"; // Retourne la page d'inscription du freelancer
    }

    @PostMapping("/inscription_freelancer")
    public String registerFreelancer(@ModelAttribute Freelancer freelancer) {
        // Sauvegarde du freelancer (à implémenter si vous avez un DAO pour Freelancer)
        // dao_freelancer.save(freelancer); 
        return "redirect:/home"; // Redirige vers la page d'accueil après l'inscription
    }

    // Profil utilisateur
    @GetMapping("/profile")
    public String viewProfile(Model model) {
        User currentUser = getCurrentUser();  // Récupère l'utilisateur connecté
        model.addAttribute("user", currentUser);
        return "profile"; // Retourne la page de profil de l'utilisateur connecté
    }

    // Projets des freelances
    @GetMapping("/projets_freelancers")
    public String projetsFreelancers(Model model) {
        List<Project> projs = dao_project.findAll();
        model.addAttribute("projs", projs);
        return "projets_freelancers"; // Retourne la page des projets des freelances
    }

    // Projets des clients
    @GetMapping("/projets_clients")
    public String projetsClients(Model model) {
        List<Project> projs = dao_project.findByClient(getCurrentClient());
        model.addAttribute("projs", projs);
        return "projets_clients"; // Retourne la page des projets des clients
    }

    // Ajouter ou modifier profil
    @GetMapping("/add_profile")
    public String addProfile(Model model) {
        model.addAttribute("user", new User());
        return "add_profile"; // Retourne la page de modification ou ajout de profil
    }

    @PostMapping("/add_profile")
    public String saveProfile(@ModelAttribute User user) {
        dao_user.save(user); // Sauvegarde du profil utilisateur
        return "redirect:/profile"; // Redirige vers la page de profil après l'enregistrement
    }
}
