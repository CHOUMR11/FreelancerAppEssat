package tn.essat.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import tn.essat.model.Freelancer;

public interface IFreelancerDao extends JpaRepository<Freelancer, Integer> {

}
