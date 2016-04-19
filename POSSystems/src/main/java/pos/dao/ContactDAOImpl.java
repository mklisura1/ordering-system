package pos.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.Contact;

@Repository
public class ContactDAOImpl implements ContactDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	

	public void addContact(Contact contact) 
	{
		getCurrentSession().save(contact);
	}
	
	public void updateContact(Contact contact) 
	{
		getCurrentSession().update(contact);
	}


	public Contact getContact(int contact_id) {
		try {
			
		Contact c = (Contact) getCurrentSession().get(Contact.class, contact_id);
		return c;
		}
		catch (Exception e) {
			System.out.println("Error ContactDAOImpl : " + e.toString());
			return null;
		}
	}


	public void deleteContact(int contact_id) {
		try {
			
		Contact contact = getContact(contact_id);
		if (contact != null) {
			getCurrentSession().delete(contact);
		}
		}
		catch (Exception e) {
			System.out.println("Error ContactDAOImpl delete: " + e.toString());
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<Contact> getContacts() {
		return getCurrentSession().createQuery("from Contact").list();
	}
}
