//
//  MobileLibraryCollectionViewCell.swift
//  MobileLibrary
//
//  Created by Junhee Yoon on 2022/07/20.
//

import UIKit

class MobileLibraryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    
    func configureBookCells(data: Books) {
        baseView.backgroundColor = .random()
        baseView.clipsToBounds = true
        baseView.layer.cornerRadius = 20
        
        bookImage.image = UIImage(named: data.title.components(separatedBy: [" ", ","]).joined())
        
        bookTitleLabel.text = data.title
        bookTitleLabel.numberOfLines = 0
        bookTitleLabel.textAlignment = .center
        
        authorLabel.text = data.author
        authorLabel.textAlignment = .center
        
        publisherLabel.text = data.publisher
    }
    
}
