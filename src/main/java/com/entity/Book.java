package com.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="book_table")
public class Book {

	@Id
	private int bid;
	private String title;
	private String author;
	private double price;
	public Book(int bid, String title, String author, double price) {
		super();
		this.bid = bid;
		this.title = title;
		this.author = author;
		this.price = price;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Book [bid=" + bid + ", title=" + title + ", author=" + author + ", price=" + price + "]";
	}
	
	
}
