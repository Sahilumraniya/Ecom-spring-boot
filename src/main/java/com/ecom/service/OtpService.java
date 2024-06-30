package com.ecom.service;

import java.security.SecureRandom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class OtpService {
	
	@Autowired
    private JavaMailSender mailSender;
	
	public String sendOtp(String email) {
		// Generate OTP
        String otp = genereateOtp();

        // Send OTP via email
        try {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject("OTP From E-com spring");
        message.setText("Yor Otp for reset password : " + otp);
        mailSender.send(message);
        }catch(Exception e) {
        	System.out.println("Error in Email sending :: "+e.getMessage());
        }
        return otp;
	}

	private  String genereateOtp() {
//		String source = "0123456789";
//		StringBuffer otp = new StringBuffer();
//		for(int i=0;i<6;i++) {
//			otp.append(source.charAt((int) (Math.random()*source.length())));
//		}
//		return otp.toString();
		SecureRandom random = new SecureRandom();
		int otp = 100000 + random.nextInt(900000);
		return String.valueOf(otp);
	}
}
