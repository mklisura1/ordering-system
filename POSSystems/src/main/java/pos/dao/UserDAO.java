package pos.dao;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

import pos.model.User;

public interface UserDAO {
	public void addUser(User user);
	public void updateUser(User user);
	public User getUser(int user_id);
	public void deleteUser(int user_id);
	public List<User> getUsers();
	public User getUserByUsername(String username);
	//enkripcija
	public String getSalt() throws NoSuchAlgorithmException;
	public String generatePasswordHash(String password) throws NoSuchAlgorithmException, InvalidKeySpecException;
	public String toHex(byte[] array) throws NoSuchAlgorithmException;
	public boolean validatePassword(String inputPassword, String hashedPassword) throws NoSuchAlgorithmException, InvalidKeySpecException;
	public byte[] fromHex(String hex) throws NoSuchAlgorithmException;
	
}
