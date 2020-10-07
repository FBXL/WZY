package com.wzy.controller;

import com.wzy.pojo.Book;
import com.wzy.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    /**
     *  查询所有的书籍信息
     * @param model
     * @return
     */
    @RequestMapping("/queryBooks")
    public String queryBooks(Model model){
        List<Book> bookList = bookService.queryBooks();
        model.addAttribute("bookList", bookList);
        return "main";
    }

    /**
     *  跳转到添加页面
     * @return
     */
    @RequestMapping("/toAddBook")
    public String toAdd(){
        return "addBook";
    }

    /**
     *  添加书籍
     * @param book
     * @return
     */
    @RequestMapping("/addBook")
    public String addBook(Book book){
        int i = bookService.addBook(book);
        return "forward:/queryBooks";
    }

    /**
     *  跳转到修改的页面
     * @param bookId
     * @param model
     * @return
     */
    @RequestMapping("/toUpdate")
    public String toUpdate(int bookId,Model model){
        Book book = bookService.queryBookById(bookId);
        System.out.println(book);
        model.addAttribute("book", book);

        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Book book){
        System.out.println(book);
        bookService.updateBookById(book);
        return "redirect:/queryBooks";
    }

    @RequestMapping("/deleteBookById/{bookId}")
    public String deleteBookById(@PathVariable int bookId){
        int i = bookService.deleteBookById(bookId);
        return "redirect:/queryBooks";
    }


    @RequestMapping("/queryBookByName")
    public String queryBookByName(String bookName,Model model){
        List<Book> books = bookService.queryBookByName(bookName);
        model.addAttribute("bookList", books);
        return "main";
    }

}
