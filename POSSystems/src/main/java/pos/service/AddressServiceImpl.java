package pos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.AddressDAO;
import pos.model.Address;

@Service
@Transactional
public class AddressServiceImpl implements AddressService, AddressDAO {

	@Autowired
	private AddressDAO addressDAO;
	
	
	public void addAddress(Address address) {
		addressDAO.addAddress(address);
	}

	public void updateAddress(Address address) {
		addressDAO.updateAddress(address);
	}

	public Address getAddress(int address_id) {
		try 
		{
			return addressDAO.getAddress(address_id);
		}
		catch (Exception  e) 
		{
			System.out.println("AddressServiceImpl : " + e.toString());
			return null;
		}
	}

	public void deleteAddress(int address_id) {
		try 
		{
			addressDAO.deleteAddress(address_id);
		}
		catch (Exception  e) 
		{
			System.out.println("AddressServiceImpl delete : " + e.toString());
		}
	}

	@Override
	public List<Address> getAddreses() {
		return addressDAO.getAddreses();
	}

}
