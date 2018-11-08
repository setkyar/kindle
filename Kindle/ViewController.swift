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
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "Kindle"
        
        setupBooks()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let book = books?[indexPath.row]
        
//        cell.textLabel?.text = book?.title
//        cell.imageView?.image = book?.image
        
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
            return count
        }
        return 0
    }
    
    func setupBooks(){
        let page1 = Page(number: 1, text: "Text for the frist page")
        let page2 = Page(number: 2, text: "Text for the second two")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson",image: #imageLiteral(resourceName: "steve_jobs"), pages: pages)
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", image: #imageLiteral(resourceName: "bill_gates"),pages: [
            Page(number: 1, text: "Text for page 3"),
            Page(number: 2, text: "Text for page 4"),
            Page(number: 3, text: "Text for page 5"),
            Page(number: 4, text: "Text for page 6")
            ])
        
        self.books = [book, book2]
    }

}
