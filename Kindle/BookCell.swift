//
//  BookCell.swift
//  Kindle
//
//  Created by Macbook on 11/9/18.
//  Copyright © 2018 Set Kyar Wa Lar. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
