package controllers;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.stereotype.Service;

import hibernate.Comments;
import hibernate.Ques;
import hibernate.User;
import util.HibernateUtil;

@Service
@Transactional
public class HibernateManager {
	public void save(User user) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}
	public void saveComment(Comments user) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}
	public void saveQues(Ques user) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}
	


}
