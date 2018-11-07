//
//  ViewController.swift
//  Kindle
//
//  Created by Macbook on 11/6/18.
//  Copyright © 2018 Set Kyar Wa Lar. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Kindle"
        
        view.backgroundColor = .red
        //can provide custom code staring here.
        
        setupBooks()
    }
    
    func setupBooks(){
        let page1 = Page(number: 1, text: "Text for the frist page")
        let page2 = Page(number: 2, text: "Text for the second two")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: pages)
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "Text for page 3"),
            Page(number: 2, text: "Text for page 4"),
            Page(number: 3, text: "Text for page 5"),
            Page(number: 4, text: "Text for page 6")
            ])
        
        self.books = [book, book2]
        
        guard let books = self.books else {return}
        
        for book in self.books! {
            print(book.title)
            
            for page in book.pages {
                print(page.text)
            }
        }
    }

}
