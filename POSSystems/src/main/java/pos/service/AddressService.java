package pos.service;

import java.util.List;

import pos.model.Address;

public interface AddressService {
	public void addAddress(Address address);
	public void updateAddress(Address address);
	public Address getAddress(int address_id);
	public void deleteAddress(int address_id);
	public List<Address> getAddreses();

}
