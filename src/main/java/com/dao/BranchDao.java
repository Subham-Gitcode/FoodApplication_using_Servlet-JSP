package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.entity.Branch;

public class BranchDao {
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	private EntityManager em = emf.createEntityManager();
	
	public Branch createBranch(Branch b) {
		em.getTransaction().begin();
		Branch b1 = em.merge(b);
		em.getTransaction().commit();
		return b1;
	}
	public Branch getBranchById(int branchId) {
		return em.find(Branch.class, branchId);
    }

    // Method to update a branch
    public void updateBranch(Branch branch) {
    	em.getTransaction().begin();
		 em.merge(branch);
		em.getTransaction().commit();
    }
    public void deleteBranch(int branchId) {
    	Query q = em.createQuery("select b from Branch b where id = ?1");
		q.setParameter(1, branchId);
		List<Branch> listofbranch = q.getResultList();
		if(! listofbranch.isEmpty()) {
			em.getTransaction().begin();
			 em.remove(listofbranch.get(0));
			em.getTransaction().commit();
		}
    }
}
