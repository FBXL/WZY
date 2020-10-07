package com.wzy.service;

import com.wzy.pojo.Book;

import java.util.List;

public interface BookService {
    /**
     *  添加一本书
     * @param book
     * @return
     */
    int addBook(Book book);

    /**
     *  根据id删除书籍
     * @param bookId
     * @return
     */
    int deleteBookById(int bookId);

    /**
     *  修改一本书
     * @param book
     * @return
     */
    int updateBookById(Book book);

    /**
     *  查询所有的书籍
     * @return
     */
    List<Book> queryBooks();

    /**
     *  根据id查询书籍
     * @param bookId
     * @return
     */
    Book queryBookById(int bookId);

    /**
     *  根据名字模糊查询
     * @return
     */
    List<Book> queryBookByName(String bookName);
}
