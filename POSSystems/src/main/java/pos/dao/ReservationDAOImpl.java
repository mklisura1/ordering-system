package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.Reservation;

@Repository
public class ReservationDAOImpl implements ReservationDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addReservation(Reservation reservation) {
		getCurrentSession().save(reservation);

	}

	public void updateReservation(Reservation reservation) {
		//getCurrentSession().merge(reservation);
		//getCurrentSession().saveOrUpdate(reservation);
		getCurrentSession().update(reservation);	
	}

	public Reservation getReservation(int reservation_id) {
		try {
		Reservation reservation = (Reservation) getCurrentSession().get(Reservation.class, reservation_id);
		return reservation;
		}
		catch (Exception e) {
			System.out.println("Error ReservationDAOImpl : " + e.toString());
			return null;
		}
	}

	public void deleteReservation(int reservation_id) {
		try 
		{
			Reservation reservation = getReservation(reservation_id);
			if (reservation != null) {
			getCurrentSession().delete(reservation);
		}
		}
		catch (Exception e) 
		{
			System.out.println("Error ReservationDAOImpl delete: " + e.toString());
		}
	}

	@SuppressWarnings("unchecked")
	public List<Reservation> getReservations() {
		return getCurrentSession().createQuery("from Reservation").list();
	}

}
