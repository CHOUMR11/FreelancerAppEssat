package tn.essat.service;

import org.springframework.beans.factory.annotation.Autowired;

import tn.essat.dao.IClient;
import tn.essat.model.Client;

public class ClientService {

	  @Autowired
	    private IClient clientDao;

	    public Client getClientByUsername(String username) {
	        return clientDao.findByUsername(username);
	    }

	    public void saveClient(Client client) {
	        clientDao.save(client);
	    }

	    
	}

