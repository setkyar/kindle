//
//  BookCell.swift
//  Kindle
//
//  Created by Macbook on 11/9/18.
//  Copyright © 2018 Set Kyar Wa Lar. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is the text for our book inside of our cell"
        label.backgroundColor = .blue
        return label
    }()
    
    let authorLable: UILabel = {
        let label = UILabel()
        label.text = "This is some author for the book that we have in the row"
        label.backgroundColor = .green
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .yellow
        
        addSubview(coverImageView)
        coverImageView.frame = CGRect(x: 8, y: 8, width: 50, height: 64)
        
        addSubview(titleLabel)
        titleLabel.frame = CGRect(x: 66, y: 20, width: UIScreen.main.bounds.width, height: 20)
        
        addSubview(authorLable)
        authorLable.frame = CGRect(x: 66, y: 48, width: 200, height: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
