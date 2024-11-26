package com.ecom.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ecom.bean.UserBean;

@Repository
public class UserDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public void insertUser(UserBean user) {
		user.setRole("CUSTOMER");
		stmt.update("INSERT into users (firstName,gender,email,password,role) values (?,?,?,?,?)",user.getFirstName(),user.getGender(),user.getEmail(),user.getPassword(),user.getRole());
	}
	
	public UserBean getUser(String email) {
		return stmt.queryForObject("SELECT * FROM users WHERE email = ?",new BeanPropertyRowMapper<>(UserBean.class),new Object[] {email});
	}
	
	public void updateOtp(String email,String otp) {
		stmt.update("UPDATE users SET otp = ? where email = ?",otp,email);
	}
	
	public boolean verfiyOtp(String email,String otp) {
		try {
			String dbOtp = getUser(email).getOtp();
			if(dbOtp != null && dbOtp.equals(otp)) {
				updateOtp(email,null);
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public void updatePassword(String email,String password) {
		stmt.update("UPDATE users SET password = ? where email = ?",password,email);
	}
}
