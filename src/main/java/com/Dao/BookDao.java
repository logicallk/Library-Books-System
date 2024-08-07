package com.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;


import com.configuration.HibernateConfiguration;
import com.entity.Book;

import jakarta.persistence.TypedQuery;

public class BookDao {

	public static void saveBook(Book book)
	{
		
		Session session=HibernateConfiguration.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		session.persist(book);
		t.commit();
		session.close();
		
		
		
	}
	public static List<Book> booksList()
	{
		Session session=HibernateConfiguration.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		TypedQuery<Book> query=session.createQuery("from Book",Book.class);
		List<Book> booklist=query.getResultList();
		session.close();
		
		
		return booklist;
	}
	
	public static void updateBooks(Book book)
	{

		Session session=HibernateConfiguration.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		session.merge(book);
		t.commit();
		session.close();
	}
	
	public static void deleteBook(int bid)
	{
		Session session=HibernateConfiguration.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		Book b=session.get(Book.class, bid);
		if(b!=null)
		{
			session.remove(b);
		}
		t.commit();
	}
}
