package pos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.ReservationDAO;
import pos.model.Reservation;

@Service
@Transactional
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	private ReservationDAO reservationDAO;

	public void addReservation(Reservation reservation) {
		reservationDAO.addReservation(reservation);
	}

	public void updateReservation(Reservation reservation) {
		reservationDAO.updateReservation(reservation);
	}

	public Reservation getReservation(int reservation_id) {
		try 
		{
			System.out.println("ReservationServiceImpl : " +  Integer.toString(reservation_id));
			return reservationDAO.getReservation(reservation_id);
		}
		catch (Exception  e) 
		{
			System.out.println("AcccountServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteReservation(int reservation_id) {
		System.out.println("ReservationServiceImpl delete");
		try 
		{
			reservationDAO.deleteReservation(reservation_id);
		}
		catch (Exception  e) 
		{
			System.out.println("ReservationServiceImpl delete : " + e.toString());
		}
	}

	@Override
	public List<Reservation> getReservations() {
		return reservationDAO.getReservations();
	}

}
