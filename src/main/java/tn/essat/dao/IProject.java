package tn.essat.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tn.essat.model.Client;
import tn.essat.model.Project;


@Repository
public interface IProject extends JpaRepository<Project, Integer> {
	
	public List<Project>  findByClientId(int id);

	public List<Project> findByClient(Client currentClient);
	
	

}
