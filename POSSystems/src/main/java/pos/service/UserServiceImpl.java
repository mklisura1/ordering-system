package pos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.UserDAO;
import pos.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;	

	public void addUser(User user) {
		userDAO.addUser(user);
	}

	public void updateUser(User user) {
		userDAO.updateUser(user);
	}

	public User getUser(int user_id) {
		try {
		System.out.println("UserServiceImpl : " +  Integer.toString(user_id));
		return userDAO.getUser(user_id);
		}
		catch (Exception  e) {
			System.out.println("UserServiceImpl : " + e.toString());
			return null;
		}
	}
	
	public void deleteUser(int user_id) {
		System.out.println("UserServiceImpl delete");
		try {
		userDAO.deleteUser(user_id);
		}
		catch (Exception  e) {
			System.out.println("UserServiceImpl delete : " + e.toString());			
		}
	}

	@Override
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	@Override
	public User getUserByUsername(String username) {
		return userDAO.getUserByUsername(username);
	}
}
