package com.dto;

import jakarta.servlet.http.HttpServletRequest;

public class AdminBookDTO {
	private String title;
	private String author;
	private String isbn;
	private String genre;
	private String publicationDate;
	private String availableCopies;
	public AdminBookDTO() {
		super();
		
	}
	public AdminBookDTO(HttpServletRequest request) {
		title = request.getParameter("title");
		author = request.getParameter("author");
		isbn = request.getParameter("isbn");
		genre = request.getParameter("genre");
		publicationDate = request.getParameter("publicationDate");
		availableCopies = request.getParameter("availableCopies");
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
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(String publicationDate) {
		this.publicationDate = publicationDate;
	}
	public String getAvailableCopies() {
		return availableCopies;
	}
	public void setAvailableCopies(String availableCopies) {
		this.availableCopies = availableCopies;
	}
	@Override
	public String toString() {
		return "AdminBookDTO [title=" + title + ", author=" + author + ", isbn=" + isbn + ", genre=" + genre
				+ ", publicationDate=" + publicationDate + ", availableCopies=" + availableCopies + "]";
	}
	
}
