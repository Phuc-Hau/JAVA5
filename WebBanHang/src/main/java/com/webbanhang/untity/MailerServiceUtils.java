package com.webbanhang.untity;

import javax.mail.MessagingException;

import com.webbanhang.model.MailInfo;

public interface MailerServiceUtils {
	
	void send(MailInfo mailInfo) throws MessagingException;
	
	void send(String to, String subject, String body) throws MessagingException;
	
	void queue(MailInfo mail);
	
	void queue(String to, String subject, String body);
}