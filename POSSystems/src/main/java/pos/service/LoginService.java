package pos.service;

import pos.model.User;

public interface LoginService {

	public User getUserByUsername(String username);
}
