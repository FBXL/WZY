package com.wzy.service.impl;

import com.wzy.dao.BookMapper;
import com.wzy.pojo.Book;
import com.wzy.service.BookService;

import java.util.List;
public class BookServiceImpl implements BookService {

    private BookMapper bookMapper;
    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }


    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    public int deleteBookById(int bookId) {
        return bookMapper.deleteBookById(bookId);
    }

    public int updateBookById(Book book) {
        return bookMapper.updateBookById(book);
    }

    public List<Book> queryBooks() {
        return bookMapper.queryBooks();
    }

    public Book queryBookById(int bookId) {
        return bookMapper.queryBookById(bookId);
    }

    public List<Book> queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
