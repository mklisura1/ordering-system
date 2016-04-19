package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.Address;

@Repository
public class AddressDAOImpl implements AddressDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addAddress(Address address) {
		getCurrentSession().save(address);
	}

	public void updateAddress(Address address) {
		getCurrentSession().update(address);	
	}

	public Address getAddress(int address_id) {
		try 
		{
			Address address = (Address) getCurrentSession().get(Address.class, address_id);
			return address;
		}
		catch (Exception e)
		{
			System.out.println("Error AddressDAOImpl : " + e.toString());
			return null;
		}
	}

	public void deleteAddress(int address_id) {
		try 
		{
			System.out.println("Brisem adresu sa id=" + address_id);
			Address address = getAddress(address_id);
			if (address != null) {
			getCurrentSession().delete(address);
		}
		}
		catch (Exception e) 
		{
			System.out.println("Error AddressDAOImpl delete : " + e.toString());
		}

	}

	@SuppressWarnings("unchecked")
	public List<Address> getAddreses() {
		return getCurrentSession().createQuery("from Address").list();
	}

}
