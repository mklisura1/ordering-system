package pos.service;

import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.beans.factory.annotation.Autowired;*/
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pos.dao.UserDAO;
import pos.model.User;

/*import crm.dao.UserDAO;
import crm.model.User;*/

@Service
@Transactional
public class LoginServiceImpl implements LoginService{

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public User getUserByUsername(String username) {
		return userDAO.getUserByUsername(username);
	}

}
