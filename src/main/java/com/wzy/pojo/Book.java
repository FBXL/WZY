package com.wzy.pojo;

public class Book {
    private int bookId;
    private String bookName;
    private int bookCounts;
    private String detail;

    public Book() {
    }

    public Book(String bookName, int bookCounts, String detail) {
        this.bookName = bookName;
        this.bookCounts = bookCounts;
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "Books{" +
                 "bookId=" + bookId +
                 ", bookName='" + bookName + '\'' +
                 ", bookCounts=" + bookCounts +
                 ", detail='" + detail + '\'' +
                 '}';
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getBookCounts() {
        return bookCounts;
    }

    public void setBookCounts(int bookCounts) {
        this.bookCounts = bookCounts;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}