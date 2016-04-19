package pos.dao;

import java.math.BigInteger;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addUser(User user) {
		getCurrentSession().save(user);
	}	
	
	@Override 
	public User getUserByUsername(String username) {

	User user = (User) sessionFactory.getCurrentSession().createQuery("FROM User WHERE username=:username order by id DESC").setParameter("username", username).uniqueResult();

	return user;
	}
	
	//Account koji se treba updateovati
	public void updateUser(User user) {
		User userToUpdate = getUser(user.getUser_id());
		userToUpdate.setUsername(user.getUsername());		
		getCurrentSession().update(userToUpdate);	
	}

	public User getUser(int user_id) {
		try {
			System.out.println("UserDAOImpl : " +  Integer.toString(user_id));
		User u = (User) getCurrentSession().get(User.class, user_id);
		return u;
		}
		catch (Exception e) {
			System.out.println("Error UserDAOImpl : " + e.toString());
			return null;
		}
	}		

	public void deleteUser(int user_id) {
		try {
			System.out.println("UserDAOImpl  delete: " +  Integer.toString(user_id));
		User user = getUser(user_id);
		if (user != null) {
			getCurrentSession().delete(user);
		}
		}
		catch (Exception e) {
			System.out.println("Error UserDAOImpl delete: " + e.toString());		
		}		
	}

	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return getCurrentSession().createQuery("from User").list();
	}

	//Dio za enkripciju passworda
	@Override
	public String getSalt() throws NoSuchAlgorithmException{
		SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
		byte[] salt = new byte[16];
		sr.nextBytes(salt);
		return salt.toString();
	}

	@Override
	public String generatePasswordHash(String password) throws NoSuchAlgorithmException, InvalidKeySpecException{
		int iterations = 1000;
		char[] chars = password.toCharArray();
		byte[] salt = getSalt().getBytes();

		PBEKeySpec spec = new PBEKeySpec(chars, salt, iterations, 64 * 8);
		SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
		byte[] hash = skf.generateSecret(spec).getEncoded();
		return iterations + ":" + toHex(salt) + ":" + toHex(hash);
	}

	@Override
	public String toHex(byte[] array) throws NoSuchAlgorithmException{
		BigInteger bi = new BigInteger(1, array);
		String hex = bi.toString(16);
		int paddingLength = (array.length * 2) - hex.length();
		if (paddingLength > 0) {
			return String.format("%0" + paddingLength + "d", 0) + hex;
		} else {
			return hex;
		}
	}

	@Override
	public boolean validatePassword(String inputPassword, String hashedPassword) throws NoSuchAlgorithmException, InvalidKeySpecException {
		String[] parts = hashedPassword.split(":");
		int iterations = Integer.parseInt(parts[0]);
		byte[] salt = fromHex(parts[1]);
		byte[] hash = fromHex(parts[2]);

		PBEKeySpec spec = new PBEKeySpec(inputPassword.toCharArray(), salt, iterations, hash.length * 8);
		SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
		byte[] testHash = skf.generateSecret(spec).getEncoded();

		int diff = hash.length ^ testHash.length;
		for (int i = 0; i < hash.length && i < testHash.length; i++) {
			diff |= hash[i] ^ testHash[i];
		}
		return diff == 0;
	}

	@Override
	public byte[] fromHex(String hex) throws NoSuchAlgorithmException{
		byte[] bytes = new byte[hex.length() / 2];
		for (int i = 0; i < bytes.length; i++) {
			bytes[i] = (byte) Integer.parseInt(hex.substring(2 * i, 2 * i + 2), 16);
		}
		return bytes;
	}
	
	
}
