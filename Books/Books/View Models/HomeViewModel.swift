//
//  HomeViewModel.swift
//  Books
//
//  Created by Katherine Li on 9/15/20.
//  Copyright © 2020 Katherine Li. All rights reserved.
//

import Foundation

class HomeViewModel {
    var books = [Book]()
    
    func fetchBooks(completion: ([Book]?) -> Void) {
        var books = [Book]()
        
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "原版", link: "http://www.diandianxs.com/modaozushixiaoshuo/"))
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "新修版", link: "http://www.diandianxs.com/wuji/"))
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "精修版", link: "https://www.luoxia.com/modaozushi/"))
        
        completion(books)
    }
    
    func createBook(with name: String, author: String, version: String, link: String) -> Book {
        let book = Book(name: name, author: author, version: version, link: link)
        return book
    }
    
    func getBooks() -> [Book] {
        var books = [Book]()
        
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "原版", link: "http://www.diandianxs.com/modaozushixiaoshuo/"))
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "新修版", link: "http://www.diandianxs.com/wuji/"))
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "精修版", link: "https://www.luoxia.com/modaozushi/"))
        books.append(createBook(with: "合法违章", author: "罗再说", version: "", link: "https://m.shubaow.net/103/103630/"))
        books.append(createBook(with: "默读", author: "Priest", version: "", link: "https://www.luoxia.com/modu/"))
        books.append(createBook(with: "无双", author: "梦溪石", version: "", link: "https://www.zhenhunxiaoshuo.com/wushuang/"))
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "原版", link: "http://www.diandianxs.com/modaozushixiaoshuo/"))
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "新修版", link: "http://www.diandianxs.com/wuji/"))
        books.append(createBook(with: "魔道祖师", author: "墨香铜臭", version: "精修版", link: "https://www.luoxia.com/modaozushi/"))
        books.append(createBook(with: "合法违章", author: "罗再说", version: "", link: "https://m.shubaow.net/103/103630/"))
        books.append(createBook(with: "默读", author: "Priest", version: "", link: "https://www.luoxia.com/modu/"))
        books.append(createBook(with: "无双", author: "梦溪 石", version: "", link: "https://www.zhenhunxiaoshuo.com/wushuang/")) 
        
        return books
    }
}
