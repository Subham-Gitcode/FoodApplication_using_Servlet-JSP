package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.entity.Users;

public class UsersDao {

	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	private EntityManager em = emf.createEntityManager();
	
	public void saveUsers(Users user) {
		em.getTransaction().begin();
		em.persist(user);
		em.getTransaction().commit();
	}

	public Users findByEmail(String email) {
		// Custom Query To Find Record By Email
		System.out.println(email);
		
				Query q = em.createQuery("select u from Users u where email = ?1");
				q.setParameter(1, email);
				
				List<Users> list = q.getResultList();
				for(Users u : list) {
					System.out.println(u.getEmail()+" "+u.getPassword());
				}
				
				if(! list.isEmpty()) {
					return list.get(0);
				}
				else {
					return null;
				}
	}

	public Users findadminById(int adminId) {
		return em.find(Users.class, adminId);
	}

}
