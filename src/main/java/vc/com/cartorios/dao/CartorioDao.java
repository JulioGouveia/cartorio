package vc.com.cartorios.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import vc.com.cartorios.model.Cartorio;

@Repository
@Transactional
public class CartorioDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastra(Cartorio cartorio) {
		manager.persist(cartorio);
	}

	public List<Cartorio> getCartorios() {
		return manager.createQuery("FROM Cartorio", Cartorio.class).getResultList();
	}

	public void deleta(Long id) {
		Cartorio cartorio = manager.find(Cartorio.class, id);
		manager.remove(cartorio);
	}

	public Cartorio find(Long id) {
		return manager.find(Cartorio.class, id);
	}

}
