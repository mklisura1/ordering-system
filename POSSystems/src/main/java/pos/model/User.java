package pos.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="b_user")
public class User {

	@Id
	@GeneratedValue
	private Integer user_id;
	private String username;	
	private String user_password_salt;
	private String user_password_hash;	
	private Date start_date;	
	private Date end_date;	
	private String language;
	private Date last_login;	
	private String last_login_ip;
	private String last_login_from;
	
	public User(String username, String user_password_salt, String user_password_hash) {
		super();
		this.username = username;
		this.user_password_salt = user_password_salt;
		this.user_password_hash = user_password_hash;
	}

	public User() {
		super();
	}
	
	public User(Integer user_id, String username, String user_password_salt, String user_password_hash, Date start_date,
			Date end_date, String language, Date last_login, String last_login_ip, String last_login_from) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.user_password_salt = user_password_salt;
		this.user_password_hash = user_password_hash;
		this.start_date = start_date;
		this.end_date = end_date;
		this.language = language;
		this.last_login = last_login;
		this.last_login_ip = last_login_ip;
		this.last_login_from = last_login_from;
	}

	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUser_password_salt() {
		return user_password_salt;
	}
	public void setUser_password_salt(String user_password_salt) {
		this.user_password_salt = user_password_salt;
	}
	public String getUser_password_hash() {
		return user_password_hash;
	}
	public void setUser_password_hash(String user_password_hash) {
		this.user_password_hash = user_password_hash;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public Date getLast_login() {
		return last_login;
	}
	public void setLast_login(Date last_login) {
		this.last_login = last_login;
	}
	public String getLast_login_ip() {
		return last_login_ip;
	}
	public void setLast_login_ip(String last_login_ip) {
		this.last_login_ip = last_login_ip;
	}
	public String getLast_login_from() {
		return last_login_from;
	}
	public void setLast_login_from(String last_login_from) {
		this.last_login_from = last_login_from;
	}
	
}
