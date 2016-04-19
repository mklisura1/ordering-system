package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.ContactDAO;
import pos.model.Contact;

@Service
@Transactional
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO contactDAO;

	public void addContact(Contact contact) {
		contactDAO.addContact(contact);
	}

	public void updateContact(Contact contact) {
		contactDAO.updateContact(contact);
	}

	public Contact getContact(int contact_id) {
		try {

			return contactDAO.getContact(contact_id);
		} catch (Exception e) {
			System.out.println("ContactServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteContact(int contact_id) {

		try {
			contactDAO.deleteContact(contact_id);
		} catch (Exception e) {
			System.out.println("ContactServiceImpl delete : " + e.toString());

		}
	}

	@Override
	public List<Contact> getContacts() {
		return contactDAO.getContacts();
	}

}
